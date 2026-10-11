.class public final Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "verifyArgs",
        "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;",
        "(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V",
        "bindHuawei",
        "",
        "destroyHuawei",
        "execute",
        "unbindHuawei",
        "updateUserInfo",
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
.field private final verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "verifyArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    return-void
.end method

.method private final bindHuawei()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->bindHuawei(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)Lretrofit2/Call;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    return-void
.end method

.method private final destroyHuawei()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->destroyHuawei(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)Lretrofit2/Call;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    return-void
.end method

.method private final unbindHuawei()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->unbindHuawei(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)Lretrofit2/Call;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    return-void
.end method

.method private final updateUserInfo()V
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setToken(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    sget-object v2, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getCloudOnyxAccount()Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setHuawei(Lcom/onyx/android/sdk/data/account/model/HuaweiModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x321cc1aa    # -4.7656416E8f

    if-eq v1, v2, :cond_4

    const v2, 0x2e243d

    if-eq v1, v2, :cond_2

    const v2, 0x5cd39ffa

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->destroyHuawei()V

    goto :goto_0

    :cond_2
    const-string v1, "bind"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->bindHuawei()V

    .line 6
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->updateUserInfo()V

    goto :goto_0

    :cond_4
    const-string v1, "unbind"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->unbindHuawei()V

    .line 9
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;->updateUserInfo()V

    :cond_6
    :goto_0
    return-void
.end method
