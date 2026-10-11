.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "queryArgs",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
        "getProvider",
        "loadAllFolderResult",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
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
.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "googleDriverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-object p0
.end method

.method public loadAllFolderResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction$loadAllFolderResult$list$1;

    invoke-direct {v2, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction$loadAllFolderResult$list$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->toFolderMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    :cond_0
    return-object v0
.end method
