.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u000c\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "Lcom/onyx/android/sdk/data/common/data/ResponeData;",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "getProvider",
        "",
        "r",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "dropBoxProvider",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dropBoxProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-void
.end method


# virtual methods
.method public createFolder(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/data/common/data/ResponeData;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ResponeData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;-><init>()V

    :try_start_0
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCreateFolderRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getDbxClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->r(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCreateFolderRequest;-><init>(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCreateFolderRequest;->execute()Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/dropbox/core/v2/files/Metadata;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/dropbox/core/v2/files/CreateFolderErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/CreateFolderErrorException;->errorValue:Lcom/dropbox/core/v2/files/CreateFolderError;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/CreateFolderError;->getPathValue()Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/WriteError;->isConflict()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e9

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
