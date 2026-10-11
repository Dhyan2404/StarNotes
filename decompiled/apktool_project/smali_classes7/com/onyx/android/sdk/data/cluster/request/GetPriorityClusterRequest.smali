.class public final Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008J\u0014\u0010\u000e\u001a\u00020\n2\n\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "user",
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;",
        "apiHost",
        "",
        "(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Ljava/lang/String;)V",
        "clusterBean",
        "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
        "checkClusterData",
        "",
        "result",
        "execute",
        "getResult",
        "logErrorMsg",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "logMsg",
        "msg",
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
.field private final apiHost:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clusterBean:Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final user:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->user:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->apiHost:Ljava/lang/String;

    return-void
.end method

.method private final checkClusterData(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->clusterBean:Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    :cond_1
    return-void
.end method

.method private final logErrorMsg(Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPriorityServerInfo failed,apiHost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->apiHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";androidId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SecurityUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";ClusterUserInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->user:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->logMsg(Ljava/lang/String;)V

    return-void
.end method

.method private final logMsg(Ljava/lang/String;)V
    .locals 2

    const-class p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->apiHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getIndexService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->user:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;-><init>(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)V

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;->getPriorityServerInfo(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;)Lretrofit2/Call;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getCheckedBody(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;

    .line 6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->getData()Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;->getServerInfo()Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->checkClusterData(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->logErrorMsg(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final getResult()Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;->clusterBean:Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    return-object p0
.end method
