.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/google/api/services/drive/model/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0010\u001a\u00020\u0002H\u0016R\u0014\u0010\u0008\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\t\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "Lcom/google/api/services/drive/model/File;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "parentTitles",
        "",
        "",
        "filename",
        "filepath",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
        "getFilename",
        "()Ljava/lang/String;",
        "getFilepath",
        "getParentTitles",
        "()Ljava/util/List;",
        "execute",
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
.field private final filename:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final filepath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "googleDriverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentTitles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filepath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->parentTitles:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->filename:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->filepath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setUpload(Z)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/drive/model/File;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->parentTitles:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->ensureParentFolderCreated(Ljava/lang/String;Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v1

    .line 6
    invoke-virtual {v2}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud note file upload fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->filename:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->execute()Lcom/google/api/services/drive/model/File;

    move-result-object p0

    return-object p0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public final getFilepath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->filepath:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentTitles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;->parentTitles:Ljava/util/List;

    return-object p0
.end method
