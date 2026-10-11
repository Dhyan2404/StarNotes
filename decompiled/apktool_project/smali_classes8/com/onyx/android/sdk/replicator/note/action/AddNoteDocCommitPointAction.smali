.class public final Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0000H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "documentId",
        "",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;",
        "n",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "f",
        "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;",
        "replicator",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "g",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "getReplicatorInfo",
        "()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "setReplicatorInfo",
        "(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V",
        "replicatorInfo",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replicatorInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-void
.end method

.method public static final synthetic access$addCommitPoint(Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;)Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->l()Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;->hasPushedData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->isNoteLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add note commit point:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->m(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->n(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->setCommitStatus(I)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->setCommitType(I)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;->setDocumentUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    move-result-object v0

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getDbId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setDbId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toMutableDocument(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->save(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Lcom/couchbase/lite/MutableDocument;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-void
.end method

.method public final n(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/couchbase/lite/SelectResult;

    invoke-static {}, Lcom/couchbase/lite/SelectResult;->all()Lcom/couchbase/lite/SelectResult$From;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->f:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->isNoteDocCommitExpression()Lcom/couchbase/lite/Expression;

    move-result-object v1

    const-string v2, "documentUniqueId"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/couchbase/lite/Expression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p0

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Where;->limit(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    const-string p1, "limit(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, p1

    :goto_0
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    sget-object v4, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/couchbase/lite/Result;

    const-class v6, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromQueryResult$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Lcom/couchbase/lite/Result;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;

    return-object p0
.end method

.method public final setReplicatorInfo(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;->g:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-void
.end method
