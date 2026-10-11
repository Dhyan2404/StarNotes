.class Lcom/tencent/cos/xml/transfer/COSUploadTask$SimpleUploadTask;
.super Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleUploadTask"
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lbolts/CancellationTokenSource;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lbolts/CancellationTokenSource;J)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-interface {v0, p0}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    return-void
.end method

.method public cancel(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-interface {v0, p0, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    return-void
.end method

.method public bridge synthetic upload(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$SimpleUploadTask;->upload(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public upload(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->totalUploadSize:J

    iput-wide v2, v1, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->size:J

    .line 4
    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    .line 5
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {v1, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->putObject(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    .line 7
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QCloudUpload"

    const-string v2, "complete upload task"

    invoke-static {v1, p0, v2, v0}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method
