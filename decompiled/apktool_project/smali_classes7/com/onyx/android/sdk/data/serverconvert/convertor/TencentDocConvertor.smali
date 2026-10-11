.class public final Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V",
        "getClusterInfo",
        "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "cosManager",
        "Lcom/onyx/android/sdk/data/common/cos/CosManager;",
        "docConvert",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;",
        "convertEntry",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "downloadFile",
        "",
        "listener",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;",
        "init",
        "queryDocConvert",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;",
        "release",
        "uploadFile",
        "sdk-data_release"
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
.field private final clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->init()V

    return-void
.end method


# virtual methods
.method public docConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    const-string v3, "cosManager"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->getCosConfig()Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setBucket(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->getCosConfig()Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getName(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setFilename(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->getPlatform()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setPlatform(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getOssUploadKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;->setObjectKey(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;

    filled-new-array {v0}, [Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "pdf"

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;->docConvertV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;

    move-result-object p0

    return-object p0
.end method

.method public downloadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->generateConvertDocName()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    if-nez p0, :cond_0

    const-string p0, "cosManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    move-object v2, p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getOssDownloadKey()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    move-object v4, p0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->downLoadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V

    return-void
.end method

.method public final getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public init()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->clusterInfo:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getCosImmBucket()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->setBucket(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;->getCosImmEndpoint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->setRegion(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/data/common/cos/CosManager;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/common/cos/CosManager;-><init>(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    return-void
.end method

.method public queryDocConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setTicket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    const-string v3, "cosManager"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->getCosConfig()Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setBucket(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->getCosConfig()Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->getPlatform()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;->setPlatform(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;->queryConvertResultV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    if-nez p0, :cond_0

    const-string p0, "cosManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->release()V

    return-void
.end method

.method public uploadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener$DefaultImpls;->onResult$default(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->cosManager:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    if-nez p0, :cond_1

    const-string p0, "cosManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->upload(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V

    return-void
.end method
