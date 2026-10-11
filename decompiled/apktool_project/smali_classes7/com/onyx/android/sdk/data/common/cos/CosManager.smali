.class public final Lcom/onyx/android/sdk/data/common/cos/CosManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J.\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0003J\u0006\u0010\u0018\u001a\u00020\u000eJ\u001e\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cos/CosManager;",
        "",
        "cosConfigInfo",
        "Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;",
        "(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V",
        "cosXmlService",
        "Lcom/tencent/cos/xml/CosXmlService;",
        "runningTaskQueue",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lcom/tencent/cos/xml/transfer/COSXMLTask;",
        "transferManager",
        "Lcom/tencent/cos/xml/transfer/TransferManager;",
        "buildCosClient",
        "downLoadFile",
        "",
        "context",
        "Landroid/content/Context;",
        "downloadKey",
        "",
        "saveDirPath",
        "saveName",
        "listener",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;",
        "getCosConfig",
        "release",
        "upload",
        "uploadKey",
        "srcPath",
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
.field private final cosConfigInfo:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

.field private final runningTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tencent/cos/xml/transfer/COSXMLTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transferManager:Lcom/tencent/cos/xml/transfer/TransferManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cosConfigInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->cosConfigInfo:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->buildCosClient(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)Lcom/tencent/cos/xml/transfer/TransferManager;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->transferManager:Lcom/tencent/cos/xml/transfer/TransferManager;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->runningTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->upload$lambda$0(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;JJ)V

    return-void
.end method

.method public static final synthetic access$getRunningTaskQueue$p(Lcom/onyx/android/sdk/data/common/cos/CosManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->runningTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->downLoadFile$lambda$1(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;JJ)V

    return-void
.end method

.method private final buildCosClient(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)Lcom/tencent/cos/xml/transfer/TransferManager;
    .locals 4

    new-instance v0, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    invoke-direct {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->setRegion(Ljava/lang/String;)Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->isHttps(Z)Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig$Builder;->builder()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/data/common/cos/OnyxSessionCredentialProvider;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/data/common/cos/OnyxSessionCredentialProvider;-><init>(Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;)V

    new-instance p1, Lcom/tencent/cos/xml/CosXmlService;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3, v0, v2}, Lcom/tencent/cos/xml/CosXmlService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    new-instance p1, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;

    invoke-direct {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;-><init>()V

    invoke-virtual {p1, v1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->setForceSimpleUpload(Z)Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/transfer/TransferConfig$Builder;->build()Lcom/tencent/cos/xml/transfer/TransferConfig;

    move-result-object p1

    new-instance v0, Lcom/tencent/cos/xml/transfer/TransferManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    if-nez p0, :cond_0

    const-string p0, "cosXmlService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/tencent/cos/xml/transfer/TransferManager;-><init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/transfer/TransferConfig;)V

    return-object v0
.end method

.method private static final downLoadFile$lambda$1(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;JJ)V
    .locals 1

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;->onProgress(JJ)V

    return-void
.end method

.method private static final upload$lambda$0(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;JJ)V
    .locals 1

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;->onProgress(JJ)V

    return-void
.end method


# virtual methods
.method public final downLoadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v7, p0

    move-object/from16 v3, p5

    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadKey"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveDirPath"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v7, Lcom/onyx/android/sdk/data/common/cos/CosManager;->transferManager:Lcom/tencent/cos/xml/transfer/TransferManager;

    iget-object v0, v7, Lcom/onyx/android/sdk/data/common/cos/CosManager;->cosConfigInfo:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getBucket()Ljava/lang/String;

    move-result-object v10

    move-object v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/tencent/cos/xml/transfer/TransferManager;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;

    move-result-object v8

    new-instance v0, Lcom/sunia/HTREnginev2/tce;

    invoke-direct {v0, v3}, Lcom/sunia/HTREnginev2/tce;-><init>(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V

    invoke-virtual {v8, v0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->setCosXmlProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    new-instance v9, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v5, p0

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cos/CosManager;Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)V

    invoke-virtual {v8, v9}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->setCosXmlResultListener(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    iget-object v0, v7, Lcom/onyx/android/sdk/data/common/cos/CosManager;->runningTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCosConfig()Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->cosConfigInfo:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    return-object p0
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->runningTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->setCosXmlProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cancel()V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->runningTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final upload(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uploadKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->transferManager:Lcom/tencent/cos/xml/transfer/TransferManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->cosConfigInfo:Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;->getBucket()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/tencent/cos/xml/transfer/TransferManager;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/sce;

    invoke-direct {v1, p3}, Lcom/sunia/HTREnginev2/sce;-><init>(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->setCosXmlProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    new-instance v1, Lcom/onyx/android/sdk/data/common/cos/CosManager$upload$2;

    move-object v3, v1

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p0

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/data/common/cos/CosManager$upload$2;-><init>(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cos/CosManager;Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->setCosXmlResultListener(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager;->runningTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
