.class public final Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkProvider.kt\ncom/onyx/android/sdk/replicator/note/db/LinkProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n48#2,5:49\n1549#3:54\n1620#3,3:55\n*S KotlinDebug\n*F\n+ 1 LinkProvider.kt\ncom/onyx/android/sdk/replicator/note/db/LinkProvider\n*L\n31#1:49,5\n45#1:54\n45#1:55,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0016\u0010\u000f\u001a\u00020\u00042\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\rJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\nJ\u0008\u0010\u0013\u001a\u00020\u0012H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
        "linkModel",
        "",
        "saveLinkModel",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "queryArgs",
        "",
        "loadLinkList",
        "",
        "linkId",
        "loadLinkModel",
        "",
        "list",
        "saveLinkList",
        "documentId",
        "clear",
        "Lcom/couchbase/lite/Collection;",
        "a",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "couchHolder",
        "<init>",
        "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLinkProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkProvider.kt\ncom/onyx/android/sdk/replicator/note/db/LinkProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n48#2,5:49\n1549#3:54\n1620#3,3:55\n*S KotlinDebug\n*F\n+ 1 LinkProvider.kt\ncom/onyx/android/sdk/replicator/note/db/LinkProvider\n*L\n31#1:49,5\n45#1:54\n45#1:55,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "couchHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/couchbase/lite/Collection;
    .locals 1

    const-string v0, "LINK_MODEL"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final clear(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/db/LinkQueryArgsExtKt;->loadDocLinkListQuery(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;->loadLinkList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteListByIds(Lcom/couchbase/lite/Collection;Ljava/util/List;)V

    return-void
.end method

.method public final loadLinkList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "_default"

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    invoke-virtual {v2, p0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadLinkModel(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/db/LinkQueryArgsExtKt;->loadLinkById(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;->loadLinkList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    return-object p0
.end method

.method public final saveLinkList(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method

.method public final saveLinkModel(Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "linkModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    return-void
.end method
