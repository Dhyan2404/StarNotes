.class public Lcom/tencent/cos/xml/transfer/CopyObjectService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/transfer/CopyObjectService$CopyServerResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

.field private encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

.field private maxSliceSize:J

.field private sourceCustomerKey:Ljava/lang/String;

.field private sourceCustomerKeyId:Ljava/lang/String;

.field private sourceJsonContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->maxSliceSize:J

    sget-object v0, Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;->NONE:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    return-void
.end method

.method private completeMultipart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->completeMultiUpload(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object p0

    return-object p0
.end method

.method private copyObjectForLargeFile(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;J)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    invoke-direct/range {p0 .. p2}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->initMultiUpload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-wide v13, v10, Lcom/tencent/cos/xml/transfer/CopyObjectService;->maxSliceSize:J

    const/4 v15, 0x1

    const-wide/16 v0, -0x1

    move/from16 v16, v15

    :goto_0
    const-wide/16 v2, 0x1

    sub-long v4, p4, v2

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 4
    invoke-direct {v10, v8, v9, v11, v12}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->completeMultipart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    add-long v6, v0, v2

    add-long/2addr v0, v13

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    move-wide/from16 v17, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    move-object v4, v11

    move-object/from16 v5, p3

    move-wide/from16 v8, v17

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->copyObjectForLargeFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;JJ)Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;

    move-result-object v0

    .line 6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;->copyObject:Lcom/tencent/cos/xml/model/tag/CopyObject;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/CopyObject;->eTag:Ljava/lang/String;

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v16, v16, 0x1

    move-wide/from16 v0, v17

    goto :goto_0
.end method

.method private copyObjectForLargeFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;JJ)Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    move-object v0, p0

    .line 7
    new-instance v11, Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;JJ)V

    .line 8
    invoke-direct {p0, v11}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->setCopySourceEncryptionRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    .line 9
    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    invoke-virtual {v0, v11}, Lcom/tencent/cos/xml/CosXmlSimpleService;->copyObject(Lcom/tencent/cos/xml/model/object/UploadPartCopyRequest;)Lcom/tencent/cos/xml/model/object/UploadPartCopyResult;

    move-result-object v0

    return-object v0
.end method

.method private copyObjectForSmallFile(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)Lcom/tencent/cos/xml/model/object/CopyObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)V

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->setCopySourceEncryptionRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->copyObject(Lcom/tencent/cos/xml/model/object/CopyObjectRequest;)Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method private headObject(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->setCopySourceEncryptionRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    const-string p1, "Content-Length"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private initMultiUpload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;

    invoke-direct {v0, p1, p2}, Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->cosXmlService:Lcom/tencent/cos/xml/CosXmlService;

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/CosXmlSimpleService;->initMultipartUpload(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    move-result-object p0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;->initMultipartUpload:Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/InitiateMultipartUpload;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method private setCopySourceEncryptionRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/cos/xml/transfer/CopyObjectService$1;->$SwitchMap$com$tencent$cos$xml$transfer$UploadService$EncryptionType:[I

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceCustomerKeyId:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceJsonContent:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->setCOSServerSideEncryptionWithKMS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceCustomerKeyId:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceJsonContent:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;->setCopySourceServerSideEncryptionKMS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/tencent/cos/xml/model/object/HeadObjectRequest;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceCustomerKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->setCOSServerSideEncryptionWithCustomerKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceCustomerKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/object/CopyObjectRequest;->setCopySourceServerSideEncryptionCustomerKey(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public copyObject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/cos/xml/transfer/CopyObjectService$CopyServerResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/transfer/CopyObjectService$CopyServerResult;-><init>()V

    .line 2
    iget-object v1, p3, Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;->bucket:Ljava/lang/String;

    iget-object v2, p3, Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;->cosPath:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->headObject(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 3
    iget-wide v1, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->maxSliceSize:J

    cmp-long v1, v7, v1

    if-ltz v1, :cond_0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 4
    invoke-direct/range {v3 .. v8}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->copyObjectForLargeFile(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;J)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object p0

    .line 5
    iget-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    .line 6
    iget p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    .line 7
    iget-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    .line 9
    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;->completeMultipartUpload:Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/CompleteMultipartUploadResult;->eTag:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/cos/xml/transfer/CopyObjectService$CopyServerResult;->eTag:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->copyObjectForSmallFile(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    move-result-object p0

    .line 11
    iget-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    .line 12
    iget p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    iput p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpCode:I

    .line 13
    iget-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->httpMessage:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    .line 15
    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/CopyObjectResult;->copyObject:Lcom/tencent/cos/xml/model/tag/CopyObject;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/CopyObject;->eTag:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/cos/xml/transfer/CopyObjectService$CopyServerResult;->eTag:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;J)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 16
    iget-wide v0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->maxSliceSize:J

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->copyObjectForLargeFile(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;J)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/CopyObjectService;->copyObjectForSmallFile(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/object/CopyObjectRequest$CopySourceStruct;)Lcom/tencent/cos/xml/model/object/CopyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public setCopySourceCustomerKey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;->SSEC:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceCustomerKey:Ljava/lang/String;

    return-void
.end method

.method public setCopySourceCustomerKeyIdAndJsonContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceCustomerKeyId:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->sourceJsonContent:Ljava/lang/String;

    sget-object p1, Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;->SSEKMS:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/CopyObjectService;->encryptionType:Lcom/tencent/cos/xml/transfer/UploadService$EncryptionType;

    return-void
.end method
