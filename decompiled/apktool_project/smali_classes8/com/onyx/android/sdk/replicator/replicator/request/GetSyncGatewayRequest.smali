.class public final Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\u0008\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "",
        "execute",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "getSyncGateway",
        "a",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "syncGateway",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;->a:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getLoggedInAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->getSendToBooxApiHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getSyncService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/sync/OnyxSyncService;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/data/sync/OnyxSyncService;->getSyncGateway(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    const-string v2, "execute(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getCbConfig()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/model/CBConfig;->getOnyxCouchbaseWSSHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;->getCookieName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;->a:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    .line 13
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setUrl(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;->getCookieName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setCookieName(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v0

    .line 16
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setSessionID(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error sync gateway cookieName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;->getCookieName()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sessionId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "error sync gateway response is null"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/ResponseException;

    const-string v0, "get sync gateway error"

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/exception/ResponseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "null account logged"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/request/GetSyncGatewayRequest;->a:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    return-object p0
.end method
