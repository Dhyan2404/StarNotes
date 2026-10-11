.class public final Lcom/onyx/android/sdk/data/account/request/cloud/BindOnyxDeviceRequest;
.super Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/BindOnyxDeviceRequest;",
        "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;",
        "accountContext",
        "Lcom/onyx/android/sdk/data/account/bean/AccountContext;",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V",
        "execute",
        "",
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
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BindOnyxDeviceRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 5

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/account/bean/Device;->Companion:Lcom/onyx/android/sdk/data/account/bean/Device$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/Device$Companion;->updateCurrentDeviceInfo(Landroid/content/Context;)Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    sget-object v2, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->getContentApiHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getAccountService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/CloudAccountService;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->bindDevice(Lcom/onyx/android/sdk/data/account/bean/Device;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    const-string v1, "execute(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    .line 8
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/data/account/request/cloud/BindOnyxDeviceRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
