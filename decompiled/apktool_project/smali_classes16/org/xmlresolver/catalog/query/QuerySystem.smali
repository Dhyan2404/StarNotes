.class public Lorg/xmlresolver/catalog/query/QuerySystem;
.super Lorg/xmlresolver/catalog/query/QueryCatalog;
.source "SourceFile"


# instance fields
.field public final systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QuerySystem;->systemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;
    .locals 12

    iget-object v0, p0, Lorg/xmlresolver/catalog/query/QuerySystem;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "mac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/xmlresolver/catalog/entry/Entry$Type;->SYSTEM:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v4}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v5, Lorg/xmlresolver/catalog/entry/EntrySystem;

    iget-object v6, v5, Lorg/xmlresolver/catalog/entry/EntrySystem;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_3
    new-instance p0, Lorg/xmlresolver/catalog/query/QueryResult;

    iget-object p1, v5, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p0

    :cond_4
    sget-object v4, Lorg/xmlresolver/catalog/entry/Entry$Type;->REWRITE_SYSTEM:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v4}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v8, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;

    iget-object v9, v8, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;->systemIdStart:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_5

    :cond_7
    move-object v6, v8

    move-object v7, v9

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    iget-object p0, v6, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;->rewritePrefix:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/xmlresolver/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    new-instance p1, Lorg/xmlresolver/catalog/query/QueryResult;

    invoke-direct {p1, p0}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_9
    sget-object v4, Lorg/xmlresolver/catalog/entry/Entry$Type;->SYSTEM_SUFFIX:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v4}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v5

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v7, Lorg/xmlresolver/catalog/entry/EntrySystemSuffix;

    iget-object v8, v7, Lorg/xmlresolver/catalog/entry/EntrySystemSuffix;->systemIdSuffix:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_a

    :cond_c
    move-object v5, v7

    move-object v6, v8

    goto :goto_3

    :cond_d
    if-eqz v5, :cond_e

    new-instance p0, Lorg/xmlresolver/catalog/query/QueryResult;

    iget-object p1, v5, Lorg/xmlresolver/catalog/entry/EntrySystemSuffix;->uri:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p0

    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lorg/xmlresolver/catalog/entry/Entry$Type;->DELEGATE_SYSTEM:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v5}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v6, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;

    iget-object v7, v6, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;->systemIdStart:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_10
    move v8, v3

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;

    iget-object v10, v10, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;->systemIdStart:Ljava/lang/String;

    invoke-virtual {p1, v10}, Lorg/xmlresolver/CatalogManager;->normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v9, v10, :cond_11

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v4, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;

    iget-object v0, v0, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;->catalog:Ljava/net/URI;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    new-instance p2, Lorg/xmlresolver/catalog/query/QueryDelegateSystem;

    iget-object p0, p0, Lorg/xmlresolver/catalog/query/QuerySystem;->systemId:Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Lorg/xmlresolver/catalog/query/QueryDelegateSystem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_14
    invoke-virtual {p1}, Lorg/xmlresolver/CatalogManager;->getResolverConfiguration()Lorg/xmlresolver/ResolverConfiguration;

    move-result-object v0

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {v0, v1}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lorg/xmlresolver/catalog/query/QueryUri;

    iget-object p0, p0, Lorg/xmlresolver/catalog/query/QuerySystem;->systemId:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/xmlresolver/catalog/query/QueryUri;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/xmlresolver/catalog/query/QueryUri;->lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    return-object p0

    :cond_15
    sget-object p0, Lorg/xmlresolver/catalog/query/QueryResult;->EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    return-object p0
.end method
