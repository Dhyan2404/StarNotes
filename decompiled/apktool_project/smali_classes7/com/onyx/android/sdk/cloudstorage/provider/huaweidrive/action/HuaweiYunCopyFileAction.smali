.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHuaweiYunCopyFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunCopyFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0013\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0004H\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0014J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014J\u0008\u0010\u0012\u001a\u00020\u0011H\u0014J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016R\u0014\u0010\u0017\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "copyCloudData",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "parentData",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fetchAllChildCloudFiles",
        "targetFolder",
        "",
        "getTargetCloudPath",
        "fileInfoPath",
        "getCloudFileLocalPath",
        "delResult",
        "Lio/reactivex/rxjava3/core/Observable;",
        "processAfterDelete",
        "",
        "getMaxQueryLimit",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "huaweiYunProvider",
        "",
        "f",
        "J",
        "delayDuration",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "fileOperation",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
        "SMAP\nHuaweiYunCopyFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunCopyFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:J


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "huaweiYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOperation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    const-wide/16 p1, 0x5

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->f:J

    return-void
.end method


# virtual methods
.method public copyCloudData()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCopyFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->getFileOperation()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCopyFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->getCut()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->setCut(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    return-object v0
.end method

.method public fetchAllChildCloudFiles(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parentData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoByLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->HUAWEI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->normalizeToCloudParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setLimit(I)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;->setRecursive(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->toCloudFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCloudFileLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileInfoPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxQueryLimit()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public processAfterDelete(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "delResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->processAfterDelete(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "delay(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
