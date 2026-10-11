.class public Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "Lcom/google/api/services/drive/model/File;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "fileBean",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
.field private final fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
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

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static final synthetic access$onProgress(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/drive/model/File;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v3

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->normalizeParentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v2

    .line 9
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    new-instance v7, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest$execute$file$1;

    invoke-direct {v7, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest$execute$file$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;)V

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;)Lcom/google/api/services/drive/model/File;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudStorage google driver upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFileString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->execute()Lcom/google/api/services/drive/model/File;

    move-result-object p0

    return-object p0
.end method
