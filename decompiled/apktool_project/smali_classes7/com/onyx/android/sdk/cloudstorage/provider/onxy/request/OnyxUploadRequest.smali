.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
        "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
        "execute",
        "d",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "a",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "rxOSSManager",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
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

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static final synthetic access$getProgressInfo(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;)Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onProgress(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    return-void
.end method


# virtual methods
.method public final d()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    new-instance v1, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCompleteCloudPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v4, v3, v5, v6, v5}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;-><init>()V

    sget-object v6, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v7, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    new-instance v6, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0, v3}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;-><init>(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v5, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start upload cloudPath:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",lastModified:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v7, v9}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    new-instance v5, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest$uploadFile$1;

    invoke-direct {v5, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest$uploadFile$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;)V

    invoke-virtual {v0, v6, v5}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncPutObject(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;Lkotlin/jvm/functions/Function2;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->a:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncHeadObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->setCloudPath(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javaClass onyx upload done:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->localFileString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    return-object v0
.end method

.method public execute()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->d()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxUploadRequest;->execute()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method
