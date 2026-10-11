.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;
.super Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->fetchAllChildCloudFiles(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;",
        "onBatchList",
        "",
        "list",
        "",
        "Lcom/dropbox/core/v2/files/Metadata;",
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
.field public final synthetic d:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;

.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;Ljava/util/List;Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Lcom/dropbox/core/v2/DbxClientV2;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;->d:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;->e:Ljava/util/List;

    invoke-direct {p0, p3, p4}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAllFileListRequest;-><init>(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBatchList(Ljava/util/List;)Z
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/dropbox/core/v2/files/Metadata;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;->d:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->access$getDropBoxProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;->d:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;->access$getDropBoxProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/dropbox/core/v2/files/Metadata;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getDir()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
