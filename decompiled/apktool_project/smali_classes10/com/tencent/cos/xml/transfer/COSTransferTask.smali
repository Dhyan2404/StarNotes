.class public abstract Lcom/tencent/cos/xml/transfer/COSTransferTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/COSTransferTask$TaskThreadFactory;,
        Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected bucket:Ljava/lang/String;

.field protected clientException:Lcom/tencent/cos/xml/exception/CosXmlClientException;

.field protected cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

.field protected cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field protected cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

.field protected cosXmlResult:Lcom/tencent/cos/xml/model/CosXmlResult;

.field protected cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

.field protected cosXmlServiceConfig:Lcom/tencent/cos/xml/CosXmlServiceConfig;

.field protected cryptoModuleBase:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

.field protected key:Ljava/lang/String;

.field protected volatile mTransferTaskCts:Lbolts/CancellationTokenSource;

.field protected volatile manualCancel:Z

.field protected volatile manualPause:Z

.field protected region:Ljava/lang/String;

.field protected serviceException:Lcom/tencent/cos/xml/exception/CosXmlServiceException;

.field protected volatile taskId:Ljava/lang/String;

.field volatile taskState:Lcom/tencent/cos/xml/transfer/TransferState;

.field protected transferStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

.field protected volatile transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/ObjectRequest;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualPause:Z

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualCancel:Z

    invoke-interface {p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->getCosService()Lcom/tencent/cos/xml/CosXmlSimpleService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlServiceConfig:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->bucket:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->region:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlServiceConfig:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->region:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getCosPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->tag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    invoke-interface {p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    const-string v2, "encrypted transmission enabled"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->bucket:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->key:Ljava/lang/String;

    filled-new-array {p2, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "create a %s task, region: %s, bucket: %s, key: %s"

    invoke-static {v1, p1, p2, p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs compose(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[%s]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->compose(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs loggerWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[%s]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->compose(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private notifyTransferProgressChange(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object v1, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method

.method private notifyTransferResultFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/cos/xml/exception/CosXmlServiceException;->getHttpMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setErrorCode(Ljava/lang/String;)Lcom/tencent/qcloud/core/common/QCloudServiceException;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_1
    return-void
.end method

.method private notifyTransferResultSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    :cond_0
    return-void
.end method

.method private notifyTransferStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-interface {v0, p0}, Lcom/tencent/cos/xml/transfer/TransferStateListener;->onStateChanged(Lcom/tencent/cos/xml/transfer/TransferState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cancel upload task"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualCancel:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-static {}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->manualCancelException()Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cancel()V

    return-void
.end method

.method public checking()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->bucket:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->region:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "region is null"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "bucket is null"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public abstract execute()Lcom/tencent/cos/xml/model/CosXmlResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract executor()Ljava/util/concurrent/Executor;
.end method

.method public getClientException()Lcom/tencent/cos/xml/exception/CosXmlClientException;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->clientException:Lcom/tencent/cos/xml/exception/CosXmlClientException;

    return-object p0
.end method

.method public getServiceException()Lcom/tencent/cos/xml/exception/CosXmlServiceException;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->serviceException:Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    return-object p0
.end method

.method public getTaskState()Lcom/tencent/cos/xml/transfer/TransferState;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    return-object p0
.end method

.method public getTransferTaskMetrics()Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    return-object p0
.end method

.method public isManualCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualCancel:Z

    return p0
.end method

.method public isManualPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualPause:Z

    return p0
.end method

.method public onTransferFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    iget v2, p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "transfer failed, clientException=%d, %s"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "transfer failed, serviceException=%s, %s"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->clientException:Lcom/tencent/cos/xml/exception/CosXmlClientException;

    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->serviceException:Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->onComplete()V

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferStateChange()V

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferResultFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p3

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p0}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result p0

    invoke-virtual {p3, p1, v0, p2, p0}, Lcom/tencent/cos/xml/CosTrackService;->reportTransferClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;Lcom/tencent/cos/xml/exception/CosXmlClientException;Z)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p0}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result p0

    invoke-virtual {p2, p1, v0, p3, p0}, Lcom/tencent/cos/xml/CosTrackService;->reportTransferServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;Lcom/tencent/cos/xml/exception/CosXmlServiceException;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTransferInProgress()V
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->onInProgress()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferStateChange()V

    return-void
.end method

.method public onTransferPaused()V
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->onComplete()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferStateChange()V

    return-void
.end method

.method public declared-synchronized onTransferProgressChange(JJ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->onFirstProgressCallback()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferProgressChange(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTransferSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 1

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->COMPLETED:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->onComplete()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferStateChange()V

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferResultSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p0}, Lcom/tencent/cos/xml/crypto/COSDirect;->isTransferSecurely()Z

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/tencent/cos/xml/CosTrackService;->reportTransferSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;Z)V

    return-void
.end method

.method public onTransferWaiting()V
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->onStart()V

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferStateChange()V

    return-void
.end method

.method public pause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object v1, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object v1, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "cannot pause upload task in state %s"

    invoke-static {v0, v1, v2, p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pause upload task"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualPause:Z

    .line 5
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferPaused()V

    .line 6
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    :cond_1
    return-void
.end method

.method public pause(Z)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->pause()V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object v1, Lcom/tencent/cos/xml/transfer/TransferState;->PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "cannot resume upload task in state %s"

    invoke-static {v0, v1, v2, p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "resume upload task"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->start()V

    return-void
.end method

.method public setCosXmlProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setCosXmlResultListener(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->COMPLETED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferResultSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->clientException:Lcom/tencent/cos/xml/exception/CosXmlClientException;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->serviceException:Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferResultFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTransferStateListener(Lcom/tencent/cos/xml/transfer/TransferStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->notifyTransferStateChange()V

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualPause:Z

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->manualCancel:Z

    new-instance v0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-direct {v0}, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlServiceConfig:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHost(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->domain:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferWaiting()V

    new-instance v0, Lbolts/CancellationTokenSource;

    invoke-direct {v0}, Lbolts/CancellationTokenSource;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;-><init>(Lcom/tencent/cos/xml/transfer/COSTransferTask;Lcom/tencent/cos/xml/transfer/COSTransferTask$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract tag()Ljava/lang/String;
.end method
