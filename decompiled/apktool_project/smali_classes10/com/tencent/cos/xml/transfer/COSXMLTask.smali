.class public abstract Lcom/tencent/cos/xml/transfer/COSXMLTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/COSXMLTask$OnGetHttpTaskMetrics;,
        Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;,
        Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COSXMLTask"

.field protected static monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;


# instance fields
.field protected IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected bucket:Ljava/lang/String;

.field protected cosPath:Ljava/lang/String;

.field protected cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field protected cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

.field protected cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

.field protected credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected initMultipleUploadListener:Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;

.field protected internalInitMultipleUploadListener:Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;

.field protected internalProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field protected internalStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

.field private isCancelNow:Z

.field protected isNeedMd5:Z

.field private isPauseNow:Z

.field protected mException:Ljava/lang/Exception;

.field protected mResult:Lcom/tencent/cos/xml/model/CosXmlResult;

.field protected noSignHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected onGetHttpTaskMetrics:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnGetHttpTaskMetrics;

.field protected onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

.field protected queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected region:Ljava/lang/String;

.field volatile taskState:Lcom/tencent/cos/xml/transfer/TransferState;

.field protected transferStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

.field protected waitTimeoutTimer:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->getInstance()Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isNeedMd5:Z

    sget-object v0, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->transferStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/cos/xml/transfer/TransferStateListener;->onStateChanged(Lcom/tencent/cos/xml/transfer/TransferState;)V

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/tencent/cos/xml/transfer/TransferStateListener;->onStateChanged(Lcom/tencent/cos/xml/transfer/TransferState;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;
.end method

.method public abstract buildCOSXMLTaskResult(Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;
.end method

.method public cancel()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    sget-object v2, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    sget-object v4, Lcom/tencent/cos/xml/transfer/TransferState;->CANCELED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v5, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "canceled by user"

    invoke-direct {v5, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    return-void
.end method

.method public cancel(Z)V
    .locals 7

    .line 4
    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isCancelNow:Z

    .line 5
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    sget-object v1, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    sget-object v3, Lcom/tencent/cos/xml/transfer/TransferState;->CANCELED:Lcom/tencent/cos/xml/transfer/TransferState;

    new-instance v4, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p1, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p1

    const-string v0, "canceled by user"

    invoke-direct {v4, p1, v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    return-void
.end method

.method public clearResultAndException()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    return-void
.end method

.method public abstract encounterError(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .param p1    # Lcom/tencent/cos/xml/model/CosXmlRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mException:Ljava/lang/Exception;

    return-object p0
.end method

.method public getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;

    invoke-direct {v0, p0, p2}, Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLTask;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    return-void
.end method

.method public getResult()Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    return-object p0
.end method

.method public getTaskState()Lcom/tencent/cos/xml/transfer/TransferState;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    return-object p0
.end method

.method public abstract internalCancel(Z)V
.end method

.method public abstract internalCompleted()V
.end method

.method public abstract internalFailed()V
.end method

.method public abstract internalPause(Z)V
.end method

.method public abstract internalResume()V
.end method

.method public pause()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    sget-object v2, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    sget-object v4, Lcom/tencent/cos/xml/transfer/TransferState;->PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    return-void
.end method

.method public pause(Z)V
    .locals 7

    .line 4
    iput-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isPauseNow:Z

    .line 5
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    sget-object v1, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    sget-object v3, Lcom/tencent/cos/xml/transfer/TransferState;->PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    return-void
.end method

.method public resume()V
    .locals 6

    sget-object v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    sget-object v2, Lcom/tencent/cos/xml/transfer/TransferState;->RESUMED_WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    return-void
.end method

.method public setCosXmlProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setCosXmlResultListener(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 6

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    sget-object v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mException:Ljava/lang/Exception;

    iget-object v4, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    const/4 v5, 0x4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    return-void
.end method

.method public setCosXmlService(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    return-void
.end method

.method public setInitMultipleUploadListener(Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->initMultipleUploadListener:Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;

    return-void
.end method

.method public setInternalInitMultipleUploadListener(Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalInitMultipleUploadListener:Lcom/tencent/cos/xml/transfer/InitMultipleUploadListener;

    return-void
.end method

.method public setInternalProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setInternalStateListener(Lcom/tencent/cos/xml/transfer/TransferStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

    return-void
.end method

.method public setOnGetHttpTaskMetrics(Lcom/tencent/cos/xml/transfer/COSXMLTask$OnGetHttpTaskMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onGetHttpTaskMetrics:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnGetHttpTaskMetrics;

    return-void
.end method

.method public setOnSignatureListener(Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onSignatureListener:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnSignatureListener;

    return-void
.end method

.method public setTransferStateListener(Lcom/tencent/cos/xml/transfer/TransferStateListener;)V
    .locals 6

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->transferStateListener:Lcom/tencent/cos/xml/transfer/TransferStateListener;

    sget-object v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->monitor:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->sendStateMessage(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;I)V

    return-void
.end method

.method public startTimeoutTimer(J)V
    .locals 2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->waitTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSXMLTask$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask$1;-><init>(Lcom/tencent/cos/xml/transfer/COSXMLTask;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public declared-synchronized updateState(Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;Z)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p1, :cond_3

    instance-of p3, p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p3

    check-cast p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    invoke-interface {p1, p3, p2, v0}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p3

    check-cast p2, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    invoke-interface {p1, p3, v0, p2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    sget-object p4, Lcom/tencent/cos/xml/transfer/COSXMLTask$2;->$SwitchMap$com$tencent$cos$xml$transfer$TransferState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p4, p4, v1

    packed-switch p4, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalStateException;

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->CONSTRAINED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, p2, :cond_c

    :cond_5
    sget-object p1, Lcom/tencent/cos/xml/transfer/TransferState;->RESUMED_WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalResume()V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p3, Lcom/tencent/cos/xml/transfer/TransferState;->CANCELED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq p1, p3, :cond_c

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p4, Lcom/tencent/cos/xml/transfer/TransferState;->COMPLETED:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq p1, p4, :cond_c

    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mException:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p3

    check-cast p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    invoke-interface {p1, p3, p2, v0}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_6
    iget-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isCancelNow:Z

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalCancel(Z)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, p2, :cond_c

    :cond_7
    sget-object p1, Lcom/tencent/cos/xml/transfer/TransferState;->PAUSED:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V

    iget-boolean p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->isPauseNow:Z

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalPause(Z)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p3, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    if-eq p1, p3, :cond_8

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p3, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, p3, :cond_c

    :cond_8
    sget-object p1, Lcom/tencent/cos/xml/transfer/TransferState;->FAILED:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mException:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p1, :cond_a

    instance-of p3, p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p3

    check-cast p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    invoke-interface {p1, p3, p2, v0}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p3

    check-cast p2, Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    invoke-interface {p1, p3, v0, p2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalFailed()V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, p2, :cond_c

    sget-object p1, Lcom/tencent/cos/xml/transfer/TransferState;->COMPLETED:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-virtual {p0, p3}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskResult(Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->buildCOSXMLTaskRequest()Lcom/tencent/cos/xml/model/CosXmlRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->mResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    invoke-interface {p1, p2, p3}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    :cond_b
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->internalCompleted()V

    goto :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, p2, :cond_c

    sget-object p1, Lcom/tencent/cos/xml/transfer/TransferState;->IN_PROGRESS:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    sget-object p2, Lcom/tencent/cos/xml/transfer/TransferState;->RESUMED_WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    if-ne p1, p2, :cond_c

    sget-object p1, Lcom/tencent/cos/xml/transfer/TransferState;->WAITING:Lcom/tencent/cos/xml/transfer/TransferState;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->taskState:Lcom/tencent/cos/xml/transfer/TransferState;

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLTask;->dispatchStateChange(Lcom/tencent/cos/xml/transfer/TransferState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid state: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p1

    const-string p3, "COSXMLTask"

    invoke-virtual {p1, p3, p2}, Lcom/tencent/cos/xml/CosTrackService;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
