.class public Lcom/tencent/cos/xml/transfer/COSDownloadTask;
.super Lcom/tencent/cos/xml/transfer/COSTransferTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/COSDownloadTask$DownloadRecord;,
        Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_CONCURRENT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "QCloudDownload"

.field public static final TASK_UNKNOWN_STATUS:Ljava/lang/String; = "task unknown status"

.field private static downloadTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private volatile mGetObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

.field private volatile remoteEnd:J

.field private volatile remoteStart:J

.field private simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const v0, 0x7fffffff

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/tencent/cos/xml/transfer/COSTransferTask$TaskThreadFactory;

    const-string v0, "QCloudDownload-"

    const/16 v9, 0x8

    invoke-direct {v7, v0, v9}, Lcom/tencent/cos/xml/transfer/COSTransferTask$TaskThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->downloadTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/GetObjectRequest;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/ObjectRequest;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->remoteStart:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->remoteEnd:J

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->mGetObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getRange()Lcom/tencent/cos/xml/common/Range;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/Range;->getStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->remoteStart:J

    invoke-virtual {p1}, Lcom/tencent/cos/xml/common/Range;->getEnd()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->remoteEnd:J

    :cond_0
    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->mGetObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->remoteStart:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->remoteEnd:J

    return-wide v0
.end method

.method private simpleDownload()Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->mGetObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;-><init>(Lcom/tencent/cos/xml/transfer/COSDownloadTask;Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/GetObjectRequest;Lbolts/CancellationTokenSource;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->bucket:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->access$002(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->access$102(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->region:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->access$202(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->setTaskId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->transferTaskMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->access$302(Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;)Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->mGetObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    new-instance v1, Lcom/tencent/cos/xml/transfer/COSDownloadTask$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$1;-><init>(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->run()V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->getTask()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lbolts/Task;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/GetObjectResult;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->taskId:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QCloudDownload"

    const-string v2, "task unknown status"

    invoke-static {v1, p0, v2, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INTERNAL_ERROR:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cancel(Z)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->mGetObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/FileUtils;->deleteFileIfExist(Ljava/lang/String;)Z

    return-void
.end method

.method public cancel(Z)V
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cancel()V

    .line 6
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cancel(Z)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->mGetObjectRequest:Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/FileUtils;->deleteFileIfExist(Ljava/lang/String;)Z

    return-void
.end method

.method public checking()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->checking()V

    return-void
.end method

.method public execute()Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownload()Lcom/tencent/cos/xml/model/object/GetObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .locals 0

    sget-object p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->downloadTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->pause()V

    .line 2
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public pause(Z)V
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->pause()V

    .line 5
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownloadTask:Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/COSDownloadTask$SimpleDownloadTask;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 0

    const-string p0, "QCloudDownload"

    return-object p0
.end method
