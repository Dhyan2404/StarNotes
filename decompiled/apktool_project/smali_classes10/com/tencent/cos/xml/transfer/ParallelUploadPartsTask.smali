.class Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;
.super Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;
.source "SourceFile"


# instance fields
.field private mTotalProgress:Ljava/util/concurrent/atomic/AtomicLong;

.field private final runningRequestSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/cos/xml/model/object/UploadPartRequest;",
            ">;"
        }
    .end annotation
.end field

.field private tcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource<",
            "Ljava/util/Set<",
            "Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;",
            ">;>;"
        }
    .end annotation
.end field

.field private uploadPartProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;JJILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;JJILjava/lang/String;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->runningRequestSet:Ljava/util/Set;

    new-instance p1, Lbolts/TaskCompletionSource;

    invoke-direct {p1}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->tcs:Lbolts/TaskCompletionSource;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->uploadPartProgress:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->mTotalProgress:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->updateProgress(Lcom/tencent/cos/xml/model/object/UploadPartRequest;J)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->runningRequestSet:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Lbolts/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->tcs:Lbolts/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->cancelAllUploadingRequests(Z)V

    return-void
.end method

.method private calculatePartNumber(JJ)I
    .locals 2

    div-long v0, p1, p3

    long-to-int p0, v0

    rem-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method private cancelAllUploadingRequests(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->runningRequestSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->runningRequestSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mCosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v3, v2, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private declared-synchronized updateProgress(Lcom/tencent/cos/xml/model/object/UploadPartRequest;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getPartNumber()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->uploadPartProgress:Landroid/util/SparseArray;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->uploadPartProgress:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide p1, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->mTotalProgress:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mSize:J

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->notifyProgressChange(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->cancelAllUploadingRequests(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->cancelAllUploadingRequests(Z)V

    return-void
.end method

.method public upload()Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v11

    iget-wide v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mSize:J

    iget-wide v3, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mMaxPartSize:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->calculatePartNumber(JJ)I

    move-result v12

    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v14, v1

    :goto_0
    if-ge v14, v12, :cond_0

    iget v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mStartNumber:I

    add-int v7, v1, v14

    iget-wide v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    int-to-long v3, v14

    iget-wide v5, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mMaxPartSize:J

    mul-long/2addr v3, v5

    add-long v8, v1, v3

    iget-wide v3, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mSize:J

    add-long/2addr v1, v3

    sub-long/2addr v1, v8

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    move-object/from16 v1, p0

    move v2, v7

    move-wide v3, v8

    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->getUploadRequest(IJJ)Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    move-result-object v10

    new-instance v1, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$1;

    invoke-direct {v1, v0, v10}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$1;-><init>(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;)V

    invoke-virtual {v10, v1}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->runningRequestSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->runningRequestSet:Ljava/util/Set;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mCosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    new-instance v6, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v7

    move-object v0, v5

    move-object v7, v6

    move-wide v5, v8

    move-object v9, v7

    move-wide v7, v15

    move-object v15, v9

    move-object v9, v13

    move-object/from16 v16, v13

    move-object v13, v10

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;-><init>(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;IJJLjava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-interface {v0, v13, v15}, Lcom/tencent/cos/xml/crypto/COSDirect;->uploadPartAsync(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {v11}, Lbolts/Task;->waitForCompletion()V

    invoke-virtual {v11}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v11}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v1, Lcom/tencent/cos/xml/common/ClientErrorCode;->USER_CANCELLED:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-direct {v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(Lcom/tencent/cos/xml/common/ClientErrorCode;)V

    throw v0

    :cond_2
    invoke-virtual {v11}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method
