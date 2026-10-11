.class Lcom/tencent/cos/xml/transfer/UploadService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/UploadService;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/UploadService;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/UploadService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/UploadService;->access$100(Lcom/tencent/cos/xml/transfer/UploadService;)[B

    move-result-object p1

    monitor-enter p1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p3, p2}, Lcom/tencent/cos/xml/transfer/UploadService;->access$402(Lcom/tencent/cos/xml/transfer/UploadService;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p2, p3}, Lcom/tencent/cos/xml/transfer/UploadService;->access$402(Lcom/tencent/cos/xml/transfer/UploadService;Ljava/lang/Exception;)Ljava/lang/Exception;

    :goto_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/tencent/cos/xml/transfer/UploadService;->access$502(Lcom/tencent/cos/xml/transfer/UploadService;I)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/UploadService;->access$100(Lcom/tencent/cos/xml/transfer/UploadService;)[B

    move-result-object p1

    monitor-enter p1

    :try_start_0
    check-cast p2, Lcom/tencent/cos/xml/model/object/PutObjectResult;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$200(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    new-instance v1, Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    invoke-direct {v1}, Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/transfer/UploadService;->access$202(Lcom/tencent/cos/xml/transfer/UploadService;Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$200(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object v0

    iget v1, p2, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$200(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$200(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$200(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;

    move-result-object v0

    iget-object p2, p2, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;->eTag:Ljava/lang/String;

    iput-object p2, v0, Lcom/tencent/cos/xml/transfer/UploadService$UploadServiceResult;->eTag:Ljava/lang/String;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$2;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$300(Lcom/tencent/cos/xml/transfer/UploadService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
