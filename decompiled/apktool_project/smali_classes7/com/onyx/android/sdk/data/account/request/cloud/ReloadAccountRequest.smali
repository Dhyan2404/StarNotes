.class public final Lcom/onyx/android/sdk/data/account/request/cloud/ReloadAccountRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/request/cloud/ReloadAccountRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "()V",
        "execute",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/AccountContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;-><init>()V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->setToken(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V

    .line 5
    sget-object v2, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    .line 6
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/request/cloud/LoadUserInfoRequest;->execute()V

    .line 7
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountContext;->getCloudOnyxAccount()Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->updateAttribute(Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;)V

    .line 11
    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    :cond_0
    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/ReloadAccountRequest;->execute()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    return-object p0
.end method
