.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction<",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0014J\u0008\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "r",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "toCloudFile",
        "cloudFile",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "createUploadRequest",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "webDavProvider",
        "",
        "files",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Ljava/util/List;)V",
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
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
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
            "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "webDavProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-void
.end method


# virtual methods
.method public createUploadRequest(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
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
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    return-object v0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-object p0
.end method

.method public toCloudFile(Lcom/thegrizzlylabs/sardineandroid/DavResource;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 2
    .param p1    # Lcom/thegrizzlylabs/sardineandroid/DavResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toCloudFile(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 0

    .line 1
    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavUploadFileAction;->toCloudFile(Lcom/thegrizzlylabs/sardineandroid/DavResource;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method
