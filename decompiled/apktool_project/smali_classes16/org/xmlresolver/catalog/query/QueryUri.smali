.class public Lorg/xmlresolver/catalog/query/QueryUri;
.super Lorg/xmlresolver/catalog/query/QueryCatalog;
.source "SourceFile"


# instance fields
.field public final nature:Ljava/lang/String;

.field public final purpose:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryUri;->uri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryUri;->nature:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryUri;->purpose:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryUri;->uri:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/xmlresolver/catalog/query/QueryUri;->nature:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/xmlresolver/catalog/query/QueryUri;->purpose:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;
    .locals 9

    iget-object v0, p0, Lorg/xmlresolver/catalog/query/QueryUri;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlresolver/catalog/query/QueryUri;->nature:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xmlresolver/catalog/query/QueryUri;->purpose:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/xmlresolver/catalog/entry/Entry$Type;->URI:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v3}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v4, Lorg/xmlresolver/catalog/entry/EntryUri;

    iget-object v5, v4, Lorg/xmlresolver/catalog/entry/EntryUri;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/xmlresolver/catalog/query/QueryUri;->nature:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lorg/xmlresolver/catalog/entry/EntryUri;->nature:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {p1, v5}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget-object v5, p0, Lorg/xmlresolver/catalog/query/QueryUri;->purpose:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/xmlresolver/catalog/entry/EntryUri;->purpose:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    new-instance p0, Lorg/xmlresolver/catalog/query/QueryResult;

    iget-object p1, v4, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p0

    :cond_3
    sget-object v1, Lorg/xmlresolver/catalog/entry/Entry$Type;->REWRITE_URI:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v5, Lorg/xmlresolver/catalog/entry/EntryRewriteUri;

    iget-object v6, v5, Lorg/xmlresolver/catalog/entry/EntryRewriteUri;->uriStart:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_4

    :cond_5
    move-object v3, v5

    move-object v4, v6

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    iget-object p0, v3, Lorg/xmlresolver/catalog/entry/EntryRewriteUri;->rewritePrefix:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/xmlresolver/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    new-instance p1, Lorg/xmlresolver/catalog/query/QueryResult;

    invoke-direct {p1, p0}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_7
    sget-object v1, Lorg/xmlresolver/catalog/entry/Entry$Type;->URI_SUFFIX:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v4, Lorg/xmlresolver/catalog/entry/EntryUriSuffix;

    iget-object v5, v4, Lorg/xmlresolver/catalog/entry/EntryUriSuffix;->uriSuffix:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_8

    :cond_9
    move-object v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_a
    if-eqz v2, :cond_b

    new-instance p0, Lorg/xmlresolver/catalog/query/QueryResult;

    iget-object p1, v2, Lorg/xmlresolver/catalog/entry/EntryUriSuffix;->uri:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p0

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lorg/xmlresolver/catalog/entry/Entry$Type;->DELEGATE_URI:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v2}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v2, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;

    iget-object v3, v2, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;->uriStart:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;

    iget-object v6, v6, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;->uriStart:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;

    iget-object v0, v0, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;->catalog:Ljava/net/URI;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    new-instance p2, Lorg/xmlresolver/catalog/query/QueryDelegateUri;

    iget-object v0, p0, Lorg/xmlresolver/catalog/query/QueryUri;->uri:Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlresolver/catalog/query/QueryUri;->nature:Ljava/lang/String;

    iget-object p0, p0, Lorg/xmlresolver/catalog/query/QueryUri;->purpose:Ljava/lang/String;

    invoke-direct {p2, v0, v1, p0, p1}, Lorg/xmlresolver/catalog/query/QueryDelegateUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_10
    sget-object p0, Lorg/xmlresolver/catalog/query/QueryResult;->EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    return-object p0
.end method
