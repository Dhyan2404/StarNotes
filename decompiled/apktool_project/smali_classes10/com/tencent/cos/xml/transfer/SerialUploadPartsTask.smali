.class Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;
.super Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;
.source "SourceFile"


# instance fields
.field private currentUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

.field private volatile httpTaskMetrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

.field private mPartNumber:I

.field private mStartPointer:J


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;JJILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;-><init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;JJILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mStartPointer:J

    return-wide v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->currentUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mCosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p0, v0}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->currentUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mCosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    invoke-interface {p0, v0, p1}, Lcom/tencent/cos/xml/crypto/COSDirect;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_0
    return-void
.end method

.method public upload()Ljava/util/Set;
    .locals 15
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
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mStartPointer:J

    iget v0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mStartNumber:I

    iput v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mPartNumber:I

    :goto_0
    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mStartPointer:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    iget-wide v4, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mSize:J

    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    iget-wide v6, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mMaxPartSize:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget v9, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mPartNumber:I

    iget-wide v10, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mStartPointer:J

    move-object v8, p0

    move-wide v12, v0

    invoke-virtual/range {v8 .. v13}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->getUploadRequest(IJJ)Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->currentUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    new-instance v3, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask$1;

    invoke-direct {v3, p0}, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask$1;-><init>(Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;)V

    invoke-virtual {v2, v3}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mCosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->currentUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-interface {v2, v3}, Lcom/tencent/cos/xml/crypto/COSDirect;->uploadPart(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)Lcom/tencent/cos/xml/model/object/UploadPartResult;

    move-result-object v2

    iget-object v9, v2, Lcom/tencent/cos/xml/model/object/UploadPartResult;->eTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->taskId:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mPartNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "QCloudUpload"

    const-string v5, "upload part %d, etag=%s"

    invoke-static {v4, v2, v5, v3}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->loggerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;

    iget v10, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mPartNumber:I

    iget-wide v11, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mStartPointer:J

    move-object v8, v2

    move-wide v13, v0

    invoke-direct/range {v8 .. v14}, Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;-><init>(Ljava/lang/String;IJJ)V

    iget-wide v3, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mStartPointer:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mStartPointer:J

    iget v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mPartNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/cos/xml/transfer/SerialUploadPartsTask;->mPartNumber:I

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->uploadParts:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->ETAG_NOT_FOUND:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(Lcom/tencent/cos/xml/common/ClientErrorCode;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->uploadParts:Ljava/util/Set;

    return-object p0
.end method
