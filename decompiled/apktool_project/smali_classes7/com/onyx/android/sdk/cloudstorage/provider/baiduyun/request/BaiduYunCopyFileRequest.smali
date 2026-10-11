.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaiduYunCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1#2:87\n1855#3,2:88\n*S KotlinDebug\n*F\n+ 1 BaiduYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest\n*L\n73#1:88,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0006H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;",
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
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        "list",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "baiduYunProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "fileOperation",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
        "SMAP\nBaiduYunCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1#2:87\n1855#3,2:88\n*S KotlinDebug\n*F\n+ 1 BaiduYunCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest\n*L\n73#1:88,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "baiduYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOperation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    return-void
.end method

.method public static final synthetic access$getArgs(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getArgs()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;-><init>()V

    const-string v3, "search"

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setKey(Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setDir(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunSearchFileRequest;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-direct {v1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunSearchFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunSearchFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copy(Ljava/util/List;)V
    .locals 4
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

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;

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

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;->getBaiduYunClient()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest$copy$response$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest$copy$response$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;->getErrno()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setLimit(I)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-direct {p1, v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;->toCloudFiles(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCopyFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
