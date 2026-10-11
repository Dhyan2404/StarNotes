.class public final Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPBUserRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBUserRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,75:1\n1194#2,2:76\n1222#2,4:78\n1194#2,2:83\n1222#2,4:85\n1#3:82\n48#4,5:89\n*S KotlinDebug\n*F\n+ 1 PBUserRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider\n*L\n57#1:76,2\n57#1:78,4\n68#1:83,2\n68#1:85,4\n73#1:89,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0008\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006J \u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006J%\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00020\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000c\u0010\u000fJ\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002R\u0014\u0010\u0016\u001a\u00020\r8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;",
        "model",
        "",
        "saveRecordModel",
        "",
        "list",
        "saveRecordList",
        "",
        "recordIdList",
        "",
        "loadRecordModelMap",
        "",
        "status",
        "(Ljava/lang/Integer;)Ljava/util/Map;",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "queryArgs",
        "loadRecordList",
        "Lcom/couchbase/lite/Collection;",
        "a",
        "I",
        "LIMIT_RECORD_ID_LIST_COUNT_ONCE_LOAD",
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
        "SMAP\nPBUserRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBUserRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,75:1\n1194#2,2:76\n1222#2,4:78\n1194#2,2:83\n1222#2,4:85\n1#3:82\n48#4,5:89\n*S KotlinDebug\n*F\n+ 1 PBUserRecordProvider.kt\ncom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider\n*L\n57#1:76,2\n57#1:78,4\n68#1:83,2\n68#1:85,4\n73#1:89,5\n*E\n"
    }
.end annotation


# instance fields
.field public final a:I


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

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->a:I

    return-void
.end method

.method public static synthetic loadRecordModelMap$default(Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->loadRecordModelMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/couchbase/lite/Collection;
    .locals 1

    const-string v0, "PB_USER_RECORD_MODEL"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final loadRecordList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
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
            "Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->a()Lcom/couchbase/lite/Collection;

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

    const-class p1, Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;

    invoke-virtual {v2, p0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadRecordModelMap(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "status"

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->loadRecordList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Iterable;

    const/16 p1, 0xa

    .line 20
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 23
    move-object v1, p1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;

    .line 24
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final loadRecordModelMap(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "recordIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->a:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int v4, v3, v2

    .line 4
    invoke-static {p1, v3, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 5
    new-instance v5, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v5}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v6, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v7, "uniqueId"

    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v6, v7, v8}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v5

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    .line 7
    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->loadRecordList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Iterable;

    const/16 v5, 0xa

    .line 9
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 10
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    move-object v7, v5

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;

    .line 13
    invoke-virtual {v7}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final saveRecordList(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method

.method public final saveRecordModel(Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/PBUserRecordProvider;->a()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    return-void
.end method
