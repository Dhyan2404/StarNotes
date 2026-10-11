.class public Lorg/xmlresolver/catalog/query/QueryDocument;
.super Lorg/xmlresolver/catalog/query/QueryCatalog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/catalog/entry/EntryCatalog;)Lorg/xmlresolver/catalog/query/QueryResult;
    .locals 0

    sget-object p0, Lorg/xmlresolver/catalog/entry/Entry$Type;->DOCUMENT:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p2, p0}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryDocument;

    new-instance p1, Lorg/xmlresolver/catalog/query/QueryResult;

    iget-object p0, p0, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-direct {p1, p0}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_0
    sget-object p0, Lorg/xmlresolver/catalog/query/QueryResult;->EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    return-object p0
.end method
