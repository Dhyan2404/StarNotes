.class public final Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\"\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002R\u001d\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "replicatorManager",
        "l",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "treeReplicator",
        "",
        "",
        "n",
        "idList",
        "m",
        "o",
        "",
        "f",
        "Ljava/util/List;",
        "getDocIdList",
        "()Ljava/util/List;",
        "docIdList",
        "",
        "g",
        "Z",
        "syncDeleteSyncTree",
        "<init>",
        "(Ljava/util/List;Z)V",
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
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "docIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->f:Ljava/util/List;

    .line 6
    iput-boolean p2, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic access$delete(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->l(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteLocalData(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadForceRemovedDocIdList(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->n(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$syncDeleteData(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;->getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDocIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->f:Ljava/util/List;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "concatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$d;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$e;->e:Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$f;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$f;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->f:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/couchbase/lite/SelectResult;

    const/4 v2, 0x0

    const-string v3, "uniqueId"

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->notCommitDocExpression()Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->docForceRemovedExpression()Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/utils/CouchExpressionUtils;->docTypeExpression(I)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    const-string v0, "where(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Result;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->f:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->f:Ljava/util/List;

    return-object p0
.end method

.method public final o(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync delete doc count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x6f

    const/4 v12, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction$g;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
