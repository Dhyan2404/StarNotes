.class public Lorg/xmlresolver/catalog/query/QueryDelegatePublic;
.super Lorg/xmlresolver/catalog/query/QueryPublic;
.source "SourceFile"


# instance fields
.field protected final catalogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xmlresolver/catalog/query/QueryPublic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/xmlresolver/catalog/query/QueryDelegatePublic;->catalogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public resolved()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updatedCatalogSearchList(Lorg/xmlresolver/catalog/entry/EntryCatalog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
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

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/xmlresolver/catalog/query/QueryDelegatePublic;->catalogs:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
