.class public final Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction;
.super Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction<",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "()V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getConvertConfig",
        "clusterInfo",
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
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$getConvertConfig(Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction;->getConvertConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getConvertConfig(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 4

    new-instance p0, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;->getConvertConfig()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerConfigResponse;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerBean;

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerBean;->getResults()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerLanguageBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerLanguageBean;->getLang()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;->INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;->getConvertServerConfig()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerLanguageBean;

    if-nez v0, :cond_6

    return-object p1

    :cond_6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerLanguageBean;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->setOssConfig(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V

    return-object p1
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction$create$1;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction$create$2;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
