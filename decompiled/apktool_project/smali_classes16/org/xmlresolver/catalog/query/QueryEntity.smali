.class public Lorg/xmlresolver/catalog/query/QueryEntity;
.super Lorg/xmlresolver/catalog/query/QueryCatalog;
.source "SourceFile"


# instance fields
.field public final entityName:Ljava/lang/String;

.field public final publicId:Ljava/lang/String;

.field public final systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryEntity;->entityName:Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlresolver/catalog/query/QueryEntity;->systemId:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/xmlresolver/utils/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryEntity;->publicId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;
    .locals 3

    new-instance v0, Lorg/xmlresolver/catalog/query/QueryPublic;

    iget-object v1, p0, Lorg/xmlresolver/catalog/query/QueryEntity;->systemId:Ljava/lang/String;

    iget-object v2, p0, Lorg/xmlresolver/catalog/query/QueryEntity;->publicId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xmlresolver/catalog/query/QueryPublic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/xmlresolver/catalog/query/QueryPublic;->lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/query/QueryResult;->resolved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lorg/xmlresolver/catalog/entry/Entry$Type;->ENTITY:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast p2, Lorg/xmlresolver/catalog/entry/EntryEntity;

    iget-object v0, p2, Lorg/xmlresolver/catalog/entry/EntryEntity;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlresolver/catalog/query/QueryEntity;->entityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/xmlresolver/catalog/query/QueryResult;

    iget-object p1, p2, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p0

    :cond_2
    sget-object p0, Lorg/xmlresolver/catalog/query/QueryResult;->EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    return-object p0
.end method
