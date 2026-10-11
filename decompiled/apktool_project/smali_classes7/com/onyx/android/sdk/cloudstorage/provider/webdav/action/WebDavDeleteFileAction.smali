.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavDeleteFileAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u0008\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavDeleteFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "deleteCloudData",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "webDavProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "fileOperation",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webDavProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOperation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavDeleteFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-void
.end method


# virtual methods
.method public deleteCloudData()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDeleteFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavDeleteFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction;->getFileOperation()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDeleteFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0
    :try_end_0
    .catch Lcom/thegrizzlylabs/sardineandroid/impl/SardineException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    return-object v0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->webDavErrorToStandard(Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavDeleteFileAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavDeleteFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-object p0
.end method
