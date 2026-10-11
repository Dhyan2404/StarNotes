.class public final Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u0008\u0010\u0007\u001a\u00020\u0000H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;",
        "",
        "recalculate",
        "setRecalculate",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "f",
        "Z",
        "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;",
        "g",
        "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;",
        "getUserStorageBean",
        "()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;",
        "setUserStorageBean",
        "(Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;)V",
        "userStorageBean",
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
.field public f:Z

.field public g:Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$update(Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;)Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;->l()Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;

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
            "Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;->updateClusterInfoObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUserStorageBean()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;->g:Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;-><init>()V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;->f:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->setRecalculate(Z)Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->getUserStorageBean()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;->g:Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    return-object p0
.end method

.method public final setRecalculate(Z)Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;->f:Z

    return-object p0
.end method

.method public final setUserStorageBean(Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;->g:Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    return-void
.end method
