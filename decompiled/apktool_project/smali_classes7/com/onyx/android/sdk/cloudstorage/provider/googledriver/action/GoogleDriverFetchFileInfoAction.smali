.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u0002H\u0002R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "cloudFile",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getProvider",
        "searchCloudFileList",
        "sdk-cloudstorage_release"
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
.field private final cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "googleDriverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static final synthetic access$searchCloudFileList(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->searchCloudFileList()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method private final searchCloudFileList()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->fetch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->fetchFileFullInfo(Lcom/google/api/services/drive/model/File;Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/google/api/services/drive/model/File;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setParentId(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction$create$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-object p0
.end method
