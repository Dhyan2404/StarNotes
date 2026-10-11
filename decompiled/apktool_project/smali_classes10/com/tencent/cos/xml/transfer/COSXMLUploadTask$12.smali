.class Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadPart(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

.field final synthetic val$finalUploadPartRequest1:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

.field final synthetic val$slicePartStruct:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->val$finalUploadPartRequest1:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->val$slicePartStruct:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->val$finalUploadPartRequest1:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$800(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->val$finalUploadPartRequest1:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->merge(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object p1, p1, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->val$slicePartStruct:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;

    check-cast p2, Lcom/tencent/cos/xml/model/object/UploadPartResult;

    iget-object p2, p2, Lcom/tencent/cos/xml/model/object/UploadPartResult;->eTag:Ljava/lang/String;

    iput-object p2, p1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->eTag:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$SlicePartStruct;->isAlreadyUpload:Z

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2600(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2700(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2700(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$12;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$800(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onUploadParts()V

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
