.class public final Lcom/onyx/android/sdk/data/account/request/cloud/LoginByGoogleAuthRequest;
.super Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/LoginByGoogleAuthRequest;",
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByGoogleAuthRequest;->execute()V

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
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getAccountIntentArgs()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->logInByGoogleAuth(Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;)Lretrofit2/Call;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    .line 8
    invoke-static {v1}, Lcom/onyx/android/sdk/data/account/bean/DataResponseKt;->isSuccess(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/TokenBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/TokenBean;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setToken(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getResultCode()I

    move-result v1

    const-string v2, "Request Fail"

    invoke-virtual {p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method
