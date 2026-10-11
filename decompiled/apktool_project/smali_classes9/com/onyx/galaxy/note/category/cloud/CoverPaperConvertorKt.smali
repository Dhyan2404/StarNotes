.class public final Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoverPaperConvertor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverPaperConvertor.kt\ncom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1549#2:182\n1620#2,3:183\n1549#2:186\n1620#2,3:187\n1549#2:190\n1620#2,3:191\n1549#2:194\n1620#2,3:195\n1549#2:198\n1620#2,3:199\n1549#2:202\n1620#2,3:203\n1549#2:206\n1620#2,3:207\n766#2:210\n857#2,2:211\n1549#2:213\n1620#2,3:214\n223#2,2:217\n223#2,2:219\n*S KotlinDebug\n*F\n+ 1 CoverPaperConvertor.kt\ncom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt\n*L\n25#1:182\n25#1:183,3\n26#1:186\n26#1:187,3\n27#1:190\n27#1:191,3\n28#1:194\n28#1:195,3\n29#1:198\n29#1:199,3\n30#1:202\n30#1:203,3\n31#1:206\n31#1:207,3\n146#1:210\n146#1:211,2\n146#1:213\n146#1:214,3\n150#1:217,2\n154#1:219,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\u0007\u001a\u00020\u0008*\u00020\t\u001a\u0012\u0010\n\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\u000c\u001a\u00020\r*\u00020\t\u001a\n\u0010\u000e\u001a\u00020\u000f*\u00020\u0010\u001a\u0012\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0012\u0010\u0013\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0015*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u000f\u001a\n\u0010\u0018\u001a\u00020\u0012*\u00020\u000f\u001a\n\u0010\u0019\u001a\u00020\u0017*\u00020\u000f\u001a\n\u0010\u001a\u001a\u00020\u0012*\u00020\u000f\u001a\n\u0010\u001b\u001a\u00020\u001c*\u00020\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "convertAll",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;",
        "convertCover",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "item",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;",
        "convertCoverCategory",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;",
        "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;",
        "convertPaper",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "convertPaperCategory",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;",
        "convertResource",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;",
        "Lcom/onyx/galaxy/note/category/cloud/ResourceItem;",
        "findCoverCategory",
        "",
        "findPaperCategory",
        "findResourceList",
        "",
        "getResourceDir",
        "Ljava/nio/file/Path;",
        "getResourceSavePath",
        "getThumbnailDir",
        "getThumbnailSavePath",
        "toLocalType",
        "",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoverPaperConvertor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverPaperConvertor.kt\ncom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1549#2:182\n1620#2,3:183\n1549#2:186\n1620#2,3:187\n1549#2:190\n1620#2,3:191\n1549#2:194\n1620#2,3:195\n1549#2:198\n1620#2,3:199\n1549#2:202\n1620#2,3:203\n1549#2:206\n1620#2,3:207\n766#2:210\n857#2,2:211\n1549#2:213\n1620#2,3:214\n223#2,2:217\n223#2,2:219\n*S KotlinDebug\n*F\n+ 1 CoverPaperConvertor.kt\ncom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt\n*L\n25#1:182\n25#1:183,3\n26#1:186\n26#1:187,3\n27#1:190\n27#1:191,3\n28#1:194\n28#1:195,3\n29#1:198\n29#1:199,3\n30#1:202\n30#1:203,3\n31#1:206\n31#1:207,3\n146#1:210\n146#1:211,2\n146#1:213\n146#1:214,3\n150#1:217,2\n154#1:219,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final convertAll(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;)Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;
    .locals 6
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getResources()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;

    invoke-static {v5}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertResource(Lcom/onyx/galaxy/note/category/cloud/ResourceItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getCoverResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getCoverResources()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;

    invoke-static {v5}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertResource(Lcom/onyx/galaxy/note/category/cloud/ResourceItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getPaperResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getPaperResources()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;

    invoke-static {v5}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertResource(Lcom/onyx/galaxy/note/category/cloud/ResourceItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getCovers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getCovers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;

    invoke-static {p0, v5}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertCover(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getPapers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getPapers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;

    invoke-static {p0, v5}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertPaper(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getCoverCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getCoverCategories()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;

    invoke-static {v5}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertCoverCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperLocalFullData;->getPaperCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getPaperCategories()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;

    invoke-static {v3}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->convertPaperCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static final convertCover(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
    .locals 4
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->findResourceList(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setVersion(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setSource(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setOrientation(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPageSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setSizeFormat(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->findCoverCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setCategoryId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getResourceIdList()Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPriority()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setOrderIndex(F)V

    return-object v1
.end method

.method public static final convertCoverCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->setVersion(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->setSource(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getPriority()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;->setOrderIndex(F)V

    return-object v0
.end method

.method public static final convertPaper(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .locals 4
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->findResourceList(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setVersion(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSource(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setType(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setOrientation(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPageSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->findPaperCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setCategoryId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getResourceIdList()Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getHasPaperArgs()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;-><init>()V

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTemplateArgs(Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getHasSpaceArgs()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getDefaultSpaceValueDp()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setDefaultSpaceValueDp(F)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getMaxSpaceValueDp()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setMaxSpaceValueDp(F)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getMinSpaceValueDp()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setMinSpaceValueDp(F)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getSpaceValuePx()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setSpaceValuePx(F)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getSpaceUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setSpaceUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPagePaddingLeft()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setPagePaddingLeft(F)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPagePaddingRight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setPagePaddingRight(F)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPagePaddingTop()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setPagePaddingTop(F)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPagePaddingBottom()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setPagePaddingBottom(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->setSpaceArgs(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getPriority()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setOrderIndex(F)V

    return-object v1
.end method

.method public static final convertPaperCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->setVersion(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->setSource(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;->getPriority()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->setOrderIndex(F)V

    return-object v0
.end method

.method public static final convertResource(Lcom/onyx/galaxy/note/category/cloud/ResourceItem;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/ResourceItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setVersion(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setSource(I)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->toLocalType(Lcom/onyx/galaxy/note/category/cloud/ResourceItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setType(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setResourceType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setStrokeColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setFillColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getColorTransformMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setColorTransformMode(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getThumbnailUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setThumbnailUri(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->getResourceSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setRelativePath(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->getThumbnailSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setThumbnailRelativePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getPriority()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setOrderIndex(F)V

    return-object v0
.end method

.method public static final findCoverCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getCoverCategoryRelations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;->getCategoryId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final findPaperCategory(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getPaperCategoryRelations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/CategoryRelationItem;->getCategoryId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final findResourceList(Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;)Ljava/util/List;
    .locals 4
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;",
            "Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperCloudFullData;->getResourceRelations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationItem;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationItem;->getTargetUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperItem;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationItem;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/cloud/ResourceRelationItem;->getResourceUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static final getResourceDir(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/nio/file/Path;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/CoverPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CoverPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/path/CoverPaths;->appCurUserNoteCoverResDir()Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Unknown Resource Type"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->appCurUserNoteTemplateResDir()Ljava/nio/file/Path;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getResourceSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->getResourceDir(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getThumbnailDir(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/nio/file/Path;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/CoverPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CoverPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/path/CoverPaths;->appCurUserNoteCoverThumbnailResDir()Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Unknown Resource Type"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->appCurUserNoteTemplateThumbnailResDir()Ljava/nio/file/Path;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getThumbnailSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/cloud/CoverPaperConvertorKt;->getThumbnailDir(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thumbnail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getThumbnailUri()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toLocalType(Lcom/onyx/galaxy/note/category/cloud/ResourceItem;)I
    .locals 1
    .param p0    # Lcom/onyx/galaxy/note/category/cloud/ResourceItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/cloud/ResourceItem;->getTarget()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cover"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "template"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
