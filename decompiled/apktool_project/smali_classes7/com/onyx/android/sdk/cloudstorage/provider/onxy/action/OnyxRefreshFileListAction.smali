.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000e\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "fetchByQueryArgs",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fetchAllByRecursive",
        "",
        "getCloudPrefixPath",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;",
        "onyxCloudProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onyxCloudProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    return-void
.end method


# virtual methods
.method public fetchAllByRecursive()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;->getOssManager(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public fetchByQueryArgs()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxFetchFileListAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;->getQueryArgs()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxFetchFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getCloudPrefixPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRefreshFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    return-object p0
.end method
