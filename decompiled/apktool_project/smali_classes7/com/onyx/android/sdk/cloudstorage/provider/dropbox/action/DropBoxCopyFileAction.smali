.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000c\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0004H\u0014J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u0014\u0010\u0010\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "copyCloudData",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "parentData",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fetchAllChildCloudFiles",
        "targetFolder",
        "",
        "getTargetCloudPath",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "dropBoxProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "fileOperation",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dropBoxProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOperation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-void
.end method

.method public static final synthetic access$getDropBoxProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-object p0
.end method


# virtual methods
.method public copyCloudData()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCopyFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->getFileOperation()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCopyFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->getCut()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->setCut(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    return-object v0
.end method

.method public fetchAllChildCloudFiles(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parentData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getDbxClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;Ljava/util/List;Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->setRecursive(Z)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;->execute()Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-object p0
.end method

.method public getTargetCloudPath(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "targetFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
