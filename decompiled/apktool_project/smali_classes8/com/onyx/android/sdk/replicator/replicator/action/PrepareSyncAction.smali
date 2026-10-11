.class public final Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u0000H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "p",
        "",
        "o",
        "checkNetwork",
        "Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;",
        "l",
        "Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;",
        "n",
        "Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;",
        "r",
        "q",
        "",
        "throwable",
        "",
        "m",
        "f",
        "Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;",
        "syncGatewayRequest",
        "g",
        "Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;",
        "userStorageRequest",
        "<init>",
        "()V",
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
.field public f:Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$addCommonChannels(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->l()Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doOnError(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getSyncGateway(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->n()Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepare(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateResult(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->q()Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateUserStorage(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->r()Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkNetwork()Z
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudSyncWifiOnlyOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;->execute()V

    return-object v0
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setError(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->updateSyncGateway(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;-><init>()V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->setMessage(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->setCode(I)Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->setError(Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;

    move-result-object p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NOTE_TREE"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n()Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->f:Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;->execute()V

    return-object v0
.end method

.method public final o()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->canSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->checkNetwork()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$d;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$e;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$f;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$g;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction$h;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->g:Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->getUserStorageBean()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->setUserStorageBean(Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->f:Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;->getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->updateSyncGateway(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)V

    return-object p0
.end method

.method public final r()Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PrepareSyncAction;->g:Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    return-object v0
.end method
