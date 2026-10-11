.class public final Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\u0008\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "",
        "execute",
        "",
        "parentId",
        "",
        "channels",
        "a",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p2, Ljava/util/Collection;

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v0, "FAMILY"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 6
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

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOTE_TREE"

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "READER_LIBRARY"

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CALENDAR_TREE"

    .line 8
    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CONFIG"

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APP_DATA"

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE"

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CloudConfig"

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/replicator/replicator/request/AddCommonChannelsRequest;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    new-instance v3, Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;

    invoke-direct {v3}, Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;-><init>()V

    const-string v4, "add"

    .line 16
    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;->setAction(Ljava/lang/String;)Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;->setChannels(Ljava/util/List;)Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;

    move-result-object v2

    .line 18
    sget-object v3, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    .line 19
    sget-object v4, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->getSendToBooxApiHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getSyncService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/sync/OnyxSyncService;

    move-result-object p0

    .line 20
    sget-object v3, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Lcom/onyx/android/sdk/data/sync/OnyxSyncService;->updateSyncChannels(Ljava/lang/String;Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    const-string v0, "execute(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "add common channel"

    .line 21
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/ResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add common channel error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/exception/ResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "null account logged"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
