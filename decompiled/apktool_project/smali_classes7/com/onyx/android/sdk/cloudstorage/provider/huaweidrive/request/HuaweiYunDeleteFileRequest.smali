.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHuaweiYunDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1855#2,2:71\n*S KotlinDebug\n*F\n+ 1 HuaweiYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest\n*L\n50#1:71,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0016\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u0014J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;",
        "",
        "parentId",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fetchCloudFileList",
        "",
        "pathList",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "deleteByPathList",
        "dataList",
        "",
        "deleteCloudFileList",
        "fileInfo",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "huaweiYunProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "args",
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
        "SMAP\nHuaweiYunDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1855#2,2:71\n*S KotlinDebug\n*F\n+ 1 HuaweiYunDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest\n*L\n50#1:71,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->HUAWEI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method


# virtual methods
.method public deleteByPathList(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pathList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    return-object p0
.end method

.method public deleteCloudFileList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
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

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;->deleteByPathList(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;->e(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;->processDeleteResponse(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest$delete$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest$delete$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;
    :try_end_0
    .catch Lcom/onyx/android/sdk/data/common/exception/CloudNoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getCode()I

    move-result p1

    const/16 v0, 0x190

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public fetchCloudFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/16 p1, 0x64

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setLimit(I)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-direct {p1, v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;->setRecursive(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunDeleteFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->toCloudFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
