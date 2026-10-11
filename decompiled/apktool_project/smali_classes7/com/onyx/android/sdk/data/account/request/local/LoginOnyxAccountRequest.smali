.class public final Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;
.super Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;",
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;->execute()V

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
    new-instance v0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getCloudOnyxAccount()Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->updateAttribute(Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;)V

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getAccountIntentArgs()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getLoginType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLoginType(I)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getAccountIntentArgs()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLoginAccount(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getAccountIntentArgs()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setAreaCode(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setClusterId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;->getAccountContext()Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getTokenExpiredAt()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setTokenExpiredAt(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 11
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLocalVisible(Z)V

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLogoff(Z)V

    .line 13
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->logOut(I)V

    .line 14
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->logIn(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    .line 15
    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVAccount;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVAccount;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVAccount;->setLastTokenUpdateTime(Lcom/onyx/android/sdk/data/utils/MMKVUtils;J)V

    .line 16
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountLogUtils;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountLogUtils;

    const-class v0, Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;

    const-string v1, "login onyx account"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/account/AccountLogUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
