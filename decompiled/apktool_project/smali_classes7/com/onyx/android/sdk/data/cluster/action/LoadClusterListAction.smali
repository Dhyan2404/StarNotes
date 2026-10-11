.class public final Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;
.super Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction<",
        "Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u0008\u0010\u0005\u001a\u00020\u0000H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;",
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;",
        "()V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "load",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;)Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;->load()Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;

    move-result-object p0

    return-object p0
.end method

.method private final load()Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->isLoaded()Z

    move-result v1

    const-class v2, Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-string v1, "already loaded"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVCluster;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCluster;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/utils/MMKVCluster;->getClusterList(Lcom/onyx/android/sdk/data/utils/MMKVUtils;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v4, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    invoke-virtual {v3, v1, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    if-nez v1, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;-><init>()V

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->isNotBlank()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->setClusterList(Lcom/onyx/android/sdk/data/cluster/model/ClusterList;)V

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->isNotBlank()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->setLoaded(Z)Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load custer id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getCurClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction$create$1;-><init>(Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
