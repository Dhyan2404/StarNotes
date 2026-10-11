.class public final Lcom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteCloudRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteCloudRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,32:1\n143#2:33\n137#2,3:34\n48#2,5:37\n144#2:42\n*S KotlinDebug\n*F\n+ 1 NoteCloudRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt\n*L\n26#1:33\n26#1:34,3\n26#1:37,5\n26#1:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u001a\u000c\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002\u001a\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0014\u0010\t\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007\u001a\u0012\u0010\n\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;",
        "Lcom/couchbase/lite/Collection;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;",
        "model",
        "",
        "saveNoteCloudRecord",
        "",
        "documentId",
        "loadNoteCloudRecord",
        "deleteNoteCloudRecord",
        "sdk-cloudstorage_release"
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
        "SMAP\nNoteCloudRecordProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteCloudRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,32:1\n143#2:33\n137#2,3:34\n48#2,5:37\n144#2:42\n*S KotlinDebug\n*F\n+ 1 NoteCloudRecordProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt\n*L\n26#1:33\n26#1:34,3\n26#1:37,5\n26#1:42\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;)Lcom/couchbase/lite/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    const-string v0, "NOTE_CLOUD_RECORD"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final deleteNoteCloudRecord(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt;->a(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteById(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public static final loadNoteCloudRecord(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt;->a(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "uniqueId"

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v2, v3, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "_default"

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;

    invoke-virtual {v2, p0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;

    return-object p0
.end method

.method public static final saveNoteCloudRecord(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt;->a(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    return-void
.end method
