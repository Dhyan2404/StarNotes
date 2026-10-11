.class public final Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnyxStatisticNoteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxStatisticNoteProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,45:1\n1855#2,2:46\n48#3,5:48\n*S KotlinDebug\n*F\n+ 1 OnyxStatisticNoteProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt\n*L\n28#1:46,2\n33#1:48,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a\u000c\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008\u001a\u0018\u0010\r\u001a\u00020\u0006*\u00020\u00002\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003\u001a\n\u0010\u000f\u001a\u00020\u000e*\u00020\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
        "Lcom/couchbase/lite/Collection;",
        "a",
        "",
        "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
        "list",
        "",
        "saveOnyxNoteList",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "cbQueryArgs",
        "loadOnyxNoteList",
        "",
        "idList",
        "deleteOnyxNoteByIds",
        "",
        "loadOnyxNoteCount",
        "sdk-statistics_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOnyxStatisticNoteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxStatisticNoteProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,45:1\n1855#2,2:46\n48#3,5:48\n*S KotlinDebug\n*F\n+ 1 OnyxStatisticNoteProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt\n*L\n28#1:46,2\n33#1:48,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)Lcom/couchbase/lite/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    const-string v0, "COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_MODEL"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final deleteOnyxNoteByIds(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Ljava/util/List;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-static {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->a(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteListByIds(Lcom/couchbase/lite/Collection;Ljava/util/List;)V

    return-void
.end method

.method public static final loadOnyxNoteCount(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)J
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-static {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->a(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->countAll(Lcom/couchbase/lite/Collection;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final loadOnyxNoteList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cbQueryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-static {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->a(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)Lcom/couchbase/lite/Collection;

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

    const-class p1, Lcom/onyx/android/sdk/data/OnyxNoteModel;

    invoke-virtual {v2, p0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final saveOnyxNoteList(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;Ljava/util/List;)V
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/db/OnyxStatisticProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/OnyxNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/OnyxNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/OnyxNoteModel;->beforeSave()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-static {p0}, Lcom/onyx/android/sdk/db/OnyxStatisticNoteProviderKt;->a(Lcom/onyx/android/sdk/db/OnyxStatisticProvider;)Lcom/couchbase/lite/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method
