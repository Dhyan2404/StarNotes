.class Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->upload()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

.field final synthetic val$completeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$partCount:I

.field final synthetic val$partNumber:I

.field final synthetic val$partSize:J

.field final synthetic val$startPointer:J

.field final synthetic val$uploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;IJJLjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$uploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iput p3, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$partNumber:I

    iput-wide p4, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$startPointer:J

    iput-wide p6, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$partSize:J

    iput-object p8, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$completeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p9, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$partCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$200(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Lbolts/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$200(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Lbolts/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1, p3}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$200(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Lbolts/TaskCompletionSource;

    move-result-object p1

    new-instance p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p3, Lcom/tencent/cos/xml/common/ClientErrorCode;->UNKNOWN:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-direct {p2, p3}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(Lcom/tencent/cos/xml/common/ClientErrorCode;)V

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    :goto_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$300(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;Z)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 8

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$100(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$100(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$uploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p2, Lcom/tencent/cos/xml/model/object/UploadPartResult;

    iget-object p1, p2, Lcom/tencent/cos/xml/model/object/UploadPartResult;->eTag:Ljava/lang/String;

    const-string v0, "QCloudUpload"

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->taskId:Ljava/lang/String;

    const-string v2, "upload part %d, etag=%s"

    iget v3, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$partNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$200(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Lbolts/TaskCompletionSource;

    move-result-object p1

    new-instance p2, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->ETAG_NOT_FOUND:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-direct {p2, v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(Lcom/tencent/cos/xml/common/ClientErrorCode;)V

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$300(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    iget-object p1, p1, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->uploadParts:Ljava/util/Set;

    new-instance v7, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;

    iget-object v1, p2, Lcom/tencent/cos/xml/model/object/UploadPartResult;->eTag:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$partNumber:I

    iget-wide v3, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$startPointer:J

    iget-wide v5, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$partSize:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;-><init>(Ljava/lang/String;IJJ)V

    invoke-interface {p1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$completeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    iget p2, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->val$partCount:I

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;->access$200(Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;)Lbolts/TaskCompletionSource;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask$2;->this$0:Lcom/tencent/cos/xml/transfer/ParallelUploadPartsTask;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->uploadParts:Ljava/util/Set;

    invoke-virtual {p1, p0}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
