.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnyxDownloadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDownloadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0017\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J,\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "execute",
        "",
        "download",
        "Ljava/io/InputStream;",
        "input",
        "Ljava/io/FileOutputStream;",
        "output",
        "Lkotlin/Function1;",
        "",
        "listener",
        "copyStream",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFileBean",
        "Ljava/io/File;",
        "getTempFile",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "a",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "rxOSSManager",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "<init>",
        "(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOnyxDownloadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDownloadRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rxOSSManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static final synthetic access$getProgressInfo(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;)Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onProgress(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    return-void
.end method


# virtual methods
.method public final copyStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lkotlin/jvm/functions/Function1;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/FileOutputStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    const/high16 p0, 0x10000

    new-array p0, p0, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final download()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->getTempFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    new-instance v2, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

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

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getBaseListObjectBean(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->getPrefix()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6, v5, v6}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncGetObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v5

    const-string v7, "getObjectContent(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest$download$1$1;

    invoke-direct {v7, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest$download$1$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;)V

    invoke-virtual {p0, v5, v4, v7}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->copyStream(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lkotlin/jvm/functions/Function1;)J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSize()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/base/utils/FileUtils;->updateMtpDb(Ljava/io/File;)V

    :cond_0
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudStorage onyx download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

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
    move-exception v0

    :try_start_4
    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->download()V

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;

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
