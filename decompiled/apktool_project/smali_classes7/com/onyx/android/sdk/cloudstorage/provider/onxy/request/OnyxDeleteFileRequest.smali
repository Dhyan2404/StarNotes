.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnyxDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n1549#2:82\n1620#2,3:83\n*S KotlinDebug\n*F\n+ 1 OnyxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest\n*L\n52#1:78\n52#1:79,3\n64#1:82\n64#1:83,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u0014J\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;",
        "",
        "parentId",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fetchCloudFileList",
        "",
        "dataList",
        "",
        "deleteCloudFileList",
        "pathList",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "deleteByPathList",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOnyxDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n1549#2:82\n1620#2,3:83\n*S KotlinDebug\n*F\n+ 1 OnyxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest\n*L\n52#1:78\n52#1:79,3\n64#1:82\n64#1:83,3\n*E\n"
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

    invoke-direct {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;->b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method


# virtual methods
.method public deleteByPathList(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 3
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

    const-string v0, "pathList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCompleteCloudPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;->b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncDeleteMultipleObjects(Ljava/util/List;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

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

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getDir()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;->deleteByPathList(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;->processDeleteResponse(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V

    return-void
.end method

.method public fetchCloudFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;->b:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-direct {p1, v1, v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDeleteFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
