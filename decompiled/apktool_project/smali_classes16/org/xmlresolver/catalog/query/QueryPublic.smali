.class public Lorg/xmlresolver/catalog/query/QueryPublic;
.super Lorg/xmlresolver/catalog/query/QueryCatalog;
.source "SourceFile"


# instance fields
.field public final publicId:Ljava/lang/String;

.field public final systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->systemId:Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->publicId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;
    .locals 4

    iget-object v0, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->systemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/xmlresolver/catalog/query/QuerySystem;

    invoke-direct {v1, v0}, Lorg/xmlresolver/catalog/query/QuerySystem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lorg/xmlresolver/catalog/query/QuerySystem;->lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/query/QueryResult;->resolved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->publicId:Ljava/lang/String;

    if-eqz p1, :cond_9

    sget-object p1, Lorg/xmlresolver/catalog/entry/Entry$Type;->PUBLIC:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v0, Lorg/xmlresolver/catalog/entry/EntryPublic;

    iget-boolean v1, v0, Lorg/xmlresolver/catalog/entry/EntryPublic;->preferPublic:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->systemId:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_2
    iget-object v1, v0, Lorg/xmlresolver/catalog/entry/EntryPublic;->publicId:Ljava/lang/String;

    iget-object v2, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->publicId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lorg/xmlresolver/catalog/query/QueryResult;

    iget-object p1, v0, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lorg/xmlresolver/catalog/entry/Entry$Type;->DELEGATE_PUBLIC:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, v0}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v0, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;

    iget-boolean v1, v0, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;->preferPublic:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->systemId:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_5
    iget-object v1, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->publicId:Ljava/lang/String;

    iget-object v2, v0, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;->publicIdStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, v0, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;->publicIdStart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;

    iget-object v3, v3, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;->publicIdStart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;

    iget-object v0, v0, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;->catalog:Ljava/net/URI;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance p1, Lorg/xmlresolver/catalog/query/QueryDelegatePublic;

    iget-object v0, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->systemId:Ljava/lang/String;

    iget-object p0, p0, Lorg/xmlresolver/catalog/query/QueryPublic;->publicId:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lorg/xmlresolver/catalog/query/QueryDelegatePublic;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    :cond_9
    sget-object p0, Lorg/xmlresolver/catalog/query/QueryResult;->EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    return-object p0
.end method
