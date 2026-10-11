.class public abstract Lorg/xmlresolver/catalog/query/QueryCatalog;
.super Lorg/xmlresolver/catalog/query/QueryResult;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;
.end method

.method public query()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/xmlresolver/CatalogManager;->catalogs()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    invoke-virtual {p1, v2}, Lorg/xmlresolver/CatalogManager;->loadCatalog(Ljava/net/URI;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object v2

    move-object v3, p0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v3, p1, v2}, Lorg/xmlresolver/catalog/query/QueryCatalog;->lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlresolver/catalog/query/QueryResult;->resolved()Z

    move-result v4

    invoke-virtual {v1, v2, v0}, Lorg/xmlresolver/catalog/query/QueryResult;->updatedCatalogSearchList(Lorg/xmlresolver/catalog/entry/EntryCatalog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xmlresolver/catalog/query/QueryResult;->query()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/xmlresolver/catalog/query/QueryCatalog;

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/xmlresolver/catalog/query/QueryResult;->resolved()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/xmlresolver/catalog/query/QueryResult;->EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    return-object p0
.end method
