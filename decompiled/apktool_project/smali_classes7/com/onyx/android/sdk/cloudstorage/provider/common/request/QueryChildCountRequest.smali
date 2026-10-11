.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "execute",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "oldConditionGroup",
        "",
        "isDir",
        "",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "provider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->a:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Z)J
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "dir"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getWhereEx()Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p2

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setConditionGroup(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->a:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryDataCount(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)J

    move-result-wide p0

    return-wide p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 24
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    .line 3
    iget-object v2, v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getConditionGroup()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v2

    .line 4
    new-instance v15, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-object v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x3fff

    const/16 v22, 0x0

    invoke-direct/range {v3 .. v22}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iget-object v3, v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    .line 6
    iget-object v3, v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->a(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setChildFolderCount(J)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->a(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setChildFileCount(J)V

    .line 9
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    .line 11
    iget-object v0, v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setConditionGroup(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method
