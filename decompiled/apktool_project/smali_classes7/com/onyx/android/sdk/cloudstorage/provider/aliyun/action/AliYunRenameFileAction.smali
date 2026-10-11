.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000e\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "createParentFolder",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "fileOperation",
        "rename",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "aliYunProvider",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "aliYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOperation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    return-void
.end method


# virtual methods
.method public createParentFolder(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
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
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateFolderAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateFolderAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    return-object p0
.end method

.method public rename(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    const/16 v1, 0x3e9

    :try_start_0
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunRenameFileRequest;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-direct {v2, v3, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunRenameFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunRenameFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getExist()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/onyx/android/sdk/data/common/exception/CloudNoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getCode()I

    move-result p0

    const/16 p1, 0x199

    if-ne p0, p1, :cond_1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    :cond_1
    :goto_0
    return-object v0
.end method
