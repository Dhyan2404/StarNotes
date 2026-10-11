.class public final Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;
.super Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;",
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 4
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 5
    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->loadUserInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getTokenExpiredAtDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->setTokenExpiredAt(Ljava/util/Date;)V

    .line 10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setCloudOnyxAccount(Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;)Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    .line 11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getTokenExpiredAtDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setTokenExpiredAt(Ljava/util/Date;)V

    return-void
.end method
