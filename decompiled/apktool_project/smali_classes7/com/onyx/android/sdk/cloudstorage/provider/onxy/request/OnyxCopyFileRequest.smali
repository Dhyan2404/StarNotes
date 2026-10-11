.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "parent",
        "",
        "fetchCloudFileList",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "dataList",
        "",
        "copy",
        "targetFolder",
        "",
        "getTargetCloudPath",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;",
        "onyxCloudProvider",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "b",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "rxOSSManager",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "args",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onyxCloudProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxOSSManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    return-void
.end method


# virtual methods
.method public copy(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->copySmallFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;Z)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getCut()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v2, "src"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->deleteFile(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy/move success size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public fetchCloudFileList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-direct {p1, v1, v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTargetCloudPath(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "targetFolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
