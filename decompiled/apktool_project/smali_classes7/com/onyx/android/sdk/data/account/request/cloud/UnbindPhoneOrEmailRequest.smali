.class public final Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "unbindArgs",
        "Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;",
        "(Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;)V",
        "execute",
        "",
        "updateAccountInfo",
        "localAccount",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
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
.field private final unbindArgs:Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unbindArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;->unbindArgs:Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;

    return-void
.end method

.method private final updateAccountInfo(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;->unbindArgs:Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;->getUnboundAccountType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "phone"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setPhone(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setAreaCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "email"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setEmail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 6

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    sget-object v2, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->getContentApiHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getAccountService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/CloudAccountService;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    sget-object v2, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;->unbindArgs:Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;

    .line 7
    invoke-interface {v0, v1, v3}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->unbindPhoneOrEmail(Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;)Lretrofit2/Call;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v0, v5, v3, v4}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    .line 9
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;->updateAccountInfo(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    .line 11
    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method
