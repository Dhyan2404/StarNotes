.class public Lorg/xmlresolver/catalog/query/QueryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

.field public static final FINAL_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;


# instance fields
.field public final a:Z

.field public b:Ljava/net/URI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xmlresolver/catalog/query/QueryResult;

    invoke-direct {v0}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>()V

    sput-object v0, Lorg/xmlresolver/catalog/query/QueryResult;->EMPTY_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    new-instance v0, Lorg/xmlresolver/catalog/query/QueryResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xmlresolver/catalog/query/QueryResult;-><init>(Ljava/net/URI;)V

    sput-object v0, Lorg/xmlresolver/catalog/query/QueryResult;->FINAL_RESULT:Lorg/xmlresolver/catalog/query/QueryResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xmlresolver/catalog/query/QueryResult;->b:Ljava/net/URI;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/xmlresolver/catalog/query/QueryResult;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/xmlresolver/catalog/query/QueryResult;->a:Z

    .line 6
    iput-object p1, p0, Lorg/xmlresolver/catalog/query/QueryResult;->b:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public query()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public resolved()Z
    .locals 0

    iget-boolean p0, p0, Lorg/xmlresolver/catalog/query/QueryResult;->a:Z

    return p0
.end method

.method public updatedCatalogSearchList(Lorg/xmlresolver/catalog/entry/EntryCatalog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlresolver/catalog/entry/EntryCatalog;",
            "Ljava/util/ArrayList<",
            "Ljava/net/URI;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lorg/xmlresolver/catalog/entry/Entry$Type;->NEXT_CATALOG:Lorg/xmlresolver/catalog/entry/Entry$Type;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v0, Lorg/xmlresolver/catalog/entry/EntryNextCatalog;

    iget-object v0, v0, Lorg/xmlresolver/catalog/entry/EntryNextCatalog;->catalog:Ljava/net/URI;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public uri()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/catalog/query/QueryResult;->b:Ljava/net/URI;

    return-object p0
.end method
