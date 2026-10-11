.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0014J\u0008\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "fetchFileInfoFromCloud",
        "cloudFile",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "createDownloadRequest",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "dropBoxProvider",
        "",
        "files",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Ljava/util/List;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dropBoxProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-void
.end method


# virtual methods
.method public createDownloadRequest(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getDbxClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;-><init>(Lcom/dropbox/core/v2/DbxClientV2;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    return-object v0
.end method

.method public fetchFileInfoFromCloud(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getDbxClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchFileRequest;-><init>(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchFileRequest;->execute()Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/dropbox/core/v2/files/Metadata;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setParentId(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-object p0
.end method
