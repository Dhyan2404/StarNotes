.class public final Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;
.super Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction<",
        "Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveClusterListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveClusterListAction.kt\ncom/onyx/android/sdk/data/cluster/action/SaveClusterListAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u0008\u0010\u0005\u001a\u00020\u0000H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;",
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;",
        "()V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "save",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSaveClusterListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveClusterListAction.kt\ncom/onyx/android/sdk/data/cluster/action/SaveClusterListAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$save(Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;)Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;->save()Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;

    move-result-object p0

    return-object p0
.end method

.method private final save()Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getCurClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const-class v3, Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->setCurClusterId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-string v2, "update clusterId when is empty"

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/data/utils/MMKVCluster;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCluster;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v2, v4, v0}, Lcom/onyx/android/sdk/data/utils/MMKVCluster;->saveClusterList(Lcom/onyx/android/sdk/data/utils/MMKVUtils;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save clusterId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getCurClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save clusterId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getCurClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction$create$1;-><init>(Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
