.class public final Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveNoteTreeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveNoteTreeRequest.kt\ncom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n18#2,4:147\n50#2,7:151\n86#3,4:158\n1603#4,9:162\n1855#4:171\n1856#4:173\n1612#4:174\n766#4:175\n857#4,2:176\n1855#4,2:178\n1603#4,9:180\n1855#4:189\n1856#4:191\n1612#4:192\n1#5:172\n1#5:190\n*S KotlinDebug\n*F\n+ 1 SaveNoteTreeRequest.kt\ncom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest\n*L\n91#1:147,4\n91#1:151,7\n94#1:158,4\n119#1:162,9\n119#1:171\n119#1:173\n119#1:174\n120#1:175\n120#1:176,2\n141#1:178,2\n143#1:180,9\n143#1:189\n143#1:191\n143#1:192\n119#1:172\n143#1:190\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0000H\u0016J\u0016\u0010\n\u001a\u00020\t2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0018\u0010\r\u001a\u00020\t2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006H\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\tH\u0002R\u0016\u0010\u0013\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0012R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;",
        "syncNoteTreeBean",
        "setSyncNoteTreeBean",
        "execute",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteList",
        "",
        "saveNoteTree",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "tagModels",
        "c",
        "",
        "a",
        "b",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "replicator",
        "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V",
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
        "SMAP\nSaveNoteTreeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveNoteTreeRequest.kt\ncom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n18#2,4:147\n50#2,7:151\n86#3,4:158\n1603#4,9:162\n1855#4:171\n1856#4:173\n1612#4:174\n766#4:175\n857#4,2:176\n1855#4,2:178\n1603#4,9:180\n1855#4:189\n1856#4:191\n1612#4:192\n1#5:172\n1#5:190\n*S KotlinDebug\n*F\n+ 1 SaveNoteTreeRequest.kt\ncom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest\n*L\n91#1:147,4\n91#1:151,7\n94#1:158,4\n119#1:162,9\n119#1:171\n119#1:173\n119#1:174\n120#1:175\n120#1:176,2\n141#1:178,2\n143#1:180,9\n143#1:189\n143#1:191\n143#1:192\n119#1:172\n143#1:190\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->b:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->notCommitDocExpression()Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->docSyncEnableExpression()Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    const-string v2, "and(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryDocumentCount(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/Expression;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->b:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;->getNoteModels()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "uniqueId"

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object v0

    const-class v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2, v0, v1, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryModelList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toMutableDocument(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->saveList(Lcom/couchbase/lite/Database;Ljava/util/List;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCbUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getDbId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setDbId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toMutableDocument(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->saveList(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    sget-object p0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class p1, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save tag count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public execute()Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->b:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;->getTagModels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->c(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->b:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;->getNoteModels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->saveNoteTree(Ljava/util/List;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->b()V

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->execute()Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;

    move-result-object p0

    return-object p0
.end method

.method public final saveNoteTree(Ljava/util/List;)V
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    return-void

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isForceDeleted()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v5, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v5}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v5

    sget-object v7, Lcom/onyx/android/sdk/replicator/utils/KSyncDirUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncDirUtils;

    invoke-virtual {v7, v4}, Lcom/onyx/android/sdk/replicator/utils/KSyncDirUtils;->getDocFileSize(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setNotePointSize(J)V

    invoke-static {v5, v6}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v5

    sget-object v7, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/utils/Debug;->getTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " noteSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNotePointSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getCbUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getDbId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setDbId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    sget-object v5, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toMutableDocument(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNoteSyncStatus()I

    move-result v1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->removeDisabledSyncDocId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->addDisabledSyncDocId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->deleteListById(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->a:Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->saveList(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-void
.end method

.method public final setSyncNoteTreeBean(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "syncNoteTreeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/request/SaveNoteTreeRequest;->b:Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    return-object p0
.end method
