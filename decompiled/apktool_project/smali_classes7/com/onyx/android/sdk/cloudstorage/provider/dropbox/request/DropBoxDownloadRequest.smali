.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "execute",
        "",
        "download",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFileBean",
        "Ljava/io/File;",
        "getTempFile",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "a",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "client",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "<init>",
        "(Lcom/dropbox/core/v2/DbxClientV2;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
.field public final a:Lcom/dropbox/core/v2/DbxClientV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxClientV2;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/dropbox/core/v2/DbxClientV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->a:Lcom/dropbox/core/v2/DbxClientV2;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->e(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;J)V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;J)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    return-void
.end method


# virtual methods
.method public final download()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->getTempFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    new-instance v2, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->a:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/DbxClientV2Base;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v3

    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v3

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Lcom/sunia/HTREnginev2/gjf;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/gjf;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;)V

    invoke-virtual {v3, v6, v7}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;Lcom/dropbox/core/util/IOUtil$ProgressListener;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v3, v7, v4

    if-ltz v3, :cond_0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->updateMtpDb(Ljava/io/File;)V

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudStorage dropbox download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFileString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v6, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    throw p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->download()V

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getTempFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/io/File;
    .locals 1

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
