.class public final Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1855#2,2:64\n*S KotlinDebug\n*F\n+ 1 NoteProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteProvider\n*L\n49#1:64,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0008\u0008\u0000\u0010\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nJ<\u0010\u000f\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\u0007*\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u00062\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00100\u0015J4\u0010\u000f\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\u0007*\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u00062\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00100\u0015J\n\u0010\u0016\u001a\u00020\u0012*\u00020\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;",
        "couchHolder",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V",
        "loadModelList",
        "",
        "T",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "queryArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "cls",
        "Ljava/lang/Class;",
        "queryCount",
        "",
        "saveSyncModelList",
        "",
        "collection",
        "Lcom/couchbase/lite/Collection;",
        "list",
        "consumer",
        "Lkotlin/Function1;",
        "getTreeCollection",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1855#2,2:64\n*S KotlinDebug\n*F\n+ 1 NoteProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteProvider\n*L\n49#1:64,2\n*E\n"
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

.method public static synthetic saveSyncModelList$default(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/couchbase/lite/Collection;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 2
    sget-object p3, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider$saveSyncModelList$3;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider$saveSyncModelList$3;

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;->saveSyncModelList(Lcom/couchbase/lite/Collection;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic saveSyncModelList$default(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider$saveSyncModelList$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider$saveSyncModelList$1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;->saveSyncModelList(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getTreeCollection(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/couchbase/lite/Collection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "_default"

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final loadModelList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
            ">(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryModelList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getWhereEx()Lcom/couchbase/lite/Expression;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryDocumentCount(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/Expression;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final saveSyncModelList(Lcom/couchbase/lite/Collection;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
            ">(",
            "Lcom/couchbase/lite/Collection;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p2, Ljava/lang/Iterable;

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setDbId(Ljava/lang/String;)V

    .line 10
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toMutableDocument(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocumentList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)V

    return-void
.end method

.method public final saveSyncModelList(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;->saveSyncModelList(Lcom/couchbase/lite/Collection;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method
