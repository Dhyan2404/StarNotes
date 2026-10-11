.class public abstract Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0011\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nJ\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\u0012J*\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0002J\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u0008J\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "T",
        "",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "ensureClusterInfo",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getClusterInfo",
        "getDocConvertOssManager",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "getObserveOn",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOnMultiThread",
        "handleCancel",
        "",
        "handleProgress",
        "convertEntry",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "localConvertList",
        "",
        "networkConvertList",
        "postEvent",
        "event",
        "postEventIf",
        "setClusterInfo",
        "updateClusterInfoObservable",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->bus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method


# virtual methods
.method public final ensureClusterInfo()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->updateClusterInfoObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final getDocConvertOssManager()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;->docConvertOssConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->setToken(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;-><init>(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V

    return-object v0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->sharedSingleThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getObserveOnMultiThread()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->sharedMultiThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final handleCancel()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final handleProgress(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localConvertList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConvertList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setNetworkList(Ljava/util/List;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setLocalList(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->postEventIf(Ljava/lang/Object;)V

    return-void
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->bus:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final postEventIf(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->postEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ")",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final updateClusterInfoObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurrentClusterObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction$updateClusterInfoObservable$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction$updateClusterInfoObservable$1;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
