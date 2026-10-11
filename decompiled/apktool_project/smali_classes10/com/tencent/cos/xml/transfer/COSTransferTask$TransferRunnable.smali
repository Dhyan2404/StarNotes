.class Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSTransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;


# direct methods
.method private constructor <init>(Lcom/tencent/cos/xml/transfer/COSTransferTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/cos/xml/transfer/COSTransferTask;Lcom/tencent/cos/xml/transfer/COSTransferTask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;-><init>(Lcom/tencent/cos/xml/transfer/COSTransferTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferInProgress()V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->checking()V

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->execute()Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    iget-object v2, v1, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-object v3, v1, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlResult:Lcom/tencent/cos/xml/model/CosXmlResult;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/cos/xml/exception/CosXmlServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->isManualPaused()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->isManualCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    new-instance v3, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v4, Lcom/tencent/cos/xml/common/ClientErrorCode;->UNKNOWN:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v4}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->isManualPaused()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->isManualCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->isManualPaused()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->isManualCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "task unknown status"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask$TransferRunnable;->this$0:Lcom/tencent/cos/xml/transfer/COSTransferTask;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSTransferTask;->cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-virtual {p0, v2, v1, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_0
    :goto_0
    return-void
.end method
