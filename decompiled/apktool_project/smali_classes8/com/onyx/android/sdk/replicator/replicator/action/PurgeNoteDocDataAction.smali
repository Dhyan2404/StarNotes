.class public final Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0002H\u0002J\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0000H\u0002J\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0014\u0010\u001b\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "replicatorManager",
        "l",
        "m",
        "",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "s",
        "",
        "summaries",
        "p",
        "n",
        "",
        "ossFileKey",
        "q",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "treeReplicator",
        "o",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "r",
        "f",
        "Ljava/lang/String;",
        "documentId",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$deleteFromCloud(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->l(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteFromLocal(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteLocalFile(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->n()Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteNoteTree(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->o(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteOssData(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->p(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDocumentId$p(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRxOSSManager(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->r(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadOssFileKey(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->s()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;->getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$d;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$e;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$f;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$g;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$g;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$h;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$h;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;->getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$i;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appDocDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->deleteDirectory(Ljava/nio/file/Path;)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchDirUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchDirUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchDirUtils;->getUserDocCountDir$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchDirUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->deleteDirectory(Ljava/nio/file/Path;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;->deleteListById(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->removeDisabledSyncDocId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getKey(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->q(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v1, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " delete oss file key count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->buffer(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$j;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$j;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$k;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getRxOSSManager(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object p0

    return-object p0
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;>;"
        }
    .end annotation

    new-instance v9, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossDocDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossPathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3a

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->r(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getObjectList(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
