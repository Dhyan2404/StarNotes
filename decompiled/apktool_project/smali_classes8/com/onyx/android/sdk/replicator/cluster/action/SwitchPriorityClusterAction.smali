.class public final Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;
.super Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction<",
        "Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R$\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;",
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "q",
        "",
        "indexHost",
        "Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;",
        "n",
        "request",
        "r",
        "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
        "clusterBean",
        "p",
        "msg",
        "",
        "o",
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;",
        "e",
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;",
        "user",
        "",
        "f",
        "Z",
        "enableSwitchCluster",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "<set-?>",
        "g",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isUpdated",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "<init>",
        "(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Z)V",
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
.field public final e:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Z

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->e:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->f:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getEnableSwitchCluster$p(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->f:Z

    return p0
.end method

.method public static final synthetic access$getPriorityCluster(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->n(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$switchPropertyCluster(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->r(Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->m(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$a;->e:Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$create$2;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/h6n;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/h6n;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$create$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$create$4;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$create$5;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$create$5;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$b;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isUpdated()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->e:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;-><init>(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->execute()V

    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->isTestCluster(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getTEST_SERVER_CLUSTER_ID_MAP()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getTEST_CHINESE_SERVER_ID()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->createTestCluster(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->fromClusterBean(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveResult: cluster list updated clusterBean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";ClusterUserInfo:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->e:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";enableSwitchCluster:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->f:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->o(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->addCluster(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$c;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$d;->e:Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$e;->e:Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$e;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$f;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$g;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$h;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction$i;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->getResult()Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->p(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
