.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAliYunCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1855#2,2:107\n*S KotlinDebug\n*F\n+ 1 AliYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest\n*L\n50#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;",
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
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;",
        "body",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        "d",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "aliYunProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "args",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
        "SMAP\nAliYunCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1855#2,2:107\n*S KotlinDebug\n*F\n+ 1 AliYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest\n*L\n50#1:107,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "aliYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest$copy$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest$copy$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    return-object p0
.end method

.method public copy(Ljava/util/List;)V
    .locals 10
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

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy cloud file list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operationData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v5, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getDest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getDest()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    sget-object v5, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getDest()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoByLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_3
    move-object v2, v4

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->normalizeToCloudParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v7

    sget-object v8, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    iget-object v9, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v8, v9, v6}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoByLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    :cond_5
    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_6
    new-instance v4, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;

    invoke-direct {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;-><init>()V

    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDefaultDriveId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setDriveId(Ljava/lang/String;)V

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setFileId(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;->setToParentFileId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getNewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;->setNewName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getCut()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->d(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->c(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest$move$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest$move$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    return-object p0
.end method

.method public fetchCloudFileList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/util/List;
    .locals 2
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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->normalizeToCloudParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/16 p1, 0x64

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setLimit(I)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDefaultDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;->from(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchAllFileListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchAllFileListRequest;->setRecursive(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->toCloudFiles(Ljava/util/List;)Ljava/util/List;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
