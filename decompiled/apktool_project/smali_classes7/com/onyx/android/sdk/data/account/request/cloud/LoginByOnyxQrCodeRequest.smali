.class public final Lcom/onyx/android/sdk/data/account/request/cloud/LoginByOnyxQrCodeRequest;
.super Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/LoginByOnyxQrCodeRequest;",
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/LoginByOnyxQrCodeRequest;->execute()V

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getAccountIntentArgs()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getQrcodeId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getClientType()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    .line 4
    :cond_2
    :try_start_0
    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    sget-object v3, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->getContentApiHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getAccountService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/CloudAccountService;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getQrcodeId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getClientType()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-interface {v2, v3, v0}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->checkQrCodeLogin(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/ResponseData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_6

    return-void

    :cond_6
    const-string v2, "userInfo"

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11
    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;

    invoke-virtual {v3, v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;

    .line 12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getToken()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setToken(Ljava/lang/String;)V

    :cond_8
    return-void

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method
